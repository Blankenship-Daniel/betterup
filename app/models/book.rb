# frozen_string_literal: true

class Book < ApplicationRecord
  belongs_to :author
  belongs_to :google_book

  validates :name, presence: true
  validates :year, presence: true
end
