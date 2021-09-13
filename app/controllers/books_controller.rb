# frozen_string_literal: true

require 'uri'
require 'net/http'

class BooksController < ApplicationController
  before_action :set_book, only: :update

  # GET /books
  # GET /books.json
  def index
    @books = Book.all
  end

  # GET /books/new
  def new
    @book = Book.new
  end

  # POST /books
  # POST /books.json
  def create
    book = params[:book]

    book_name = book[:name]
    author_id = book[:author_id]
    year = book[:year]

    google_book_id = get_google_book_id(book_name, author_id, year)
    @book = Book.new(name: book_name, author_id: author_id, year: year, google_book_id: google_book_id)

    respond_to do |format|
      if @book.save
        format.html { redirect_to books_path, notice: 'Book was successfully created.' }
        format.json { render :show, status: :created, location: @book }
      else
        format.html { render :new }
        format.json { render json: @book.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /books/1
  # PATCH/PUT /books/1.json
  def update
    respond_to do |format|
      if @book.update(book_params)
        format.html { redirect_to books_path, notice: 'Book was successfully updated.' }
        format.json { render :show, status: :ok }
      else
        format.html { render :edit }
        format.json { render json: @book.errors, status: :unprocessable_entity }
      end
    end
  end

  private

  def get_google_book_id(book_name, author_id, year)
    author = Author.find_by_id(author_id)
    uri = URI("https://www.googleapis.com/books/v1/volumes?q=intitle:#{book_name}+inauthor:#{author.name}&key=#{Rails.configuration.google_books_api_key}")
    res = Net::HTTP.get_response(uri)
    resJson = JSON.parse(res.body, { symbolize_names: true }) if res.is_a?(Net::HTTPSuccess)
    items = resJson[:items]

    unless items
      return
    end

    item = items[0]
    volume = item[:volumeInfo]
    image = volume[:imageLinks][:thumbnail]
    preview = volume[:infoLink]

    google_book = GoogleBook.create(preview_image_link: image, buy_now_link: preview)
    google_book.id
  end

  # Use callbacks to share common setup or constraints between actions.
  def set_book
    @book = Book.find(params[:id])
  end

  # Use strong parameters to restrict attributes that can be changed
  def book_params
    params.require(:book).permit(:name, :author_id, :favorite, :year)
  end
end
