# frozen_string_literal: true

# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
wilde = Author.create! name: 'Oscar Wilde'
bronte = Author.create! name: 'Charlotte Brontë'
shelley = Author.create! name: 'Mary Wollstonecraft Shelley'
austen = Author.create! name: 'Jane Austen'
stoker = Author.create! name: 'Bram Stoker'
twain = Author.create! name: 'Mark Twain'
dumas = Author.create! name: 'Alexandre Dumas'
dickens = Author.create! name: 'Charles Dickens'
baum = Author.create! name: 'L. Frank Baum'
bronte2 = Author.create! name: 'Emily Brontë'

dorian = GoogleBook.create! preview_image_link: 'http://books.google.com/books/content?id=wFp2CQAAQBAJ&printsec=frontcover&img=1&zoom=1&edge=curl&source=gbs_api', buy_now_link: 'http://books.google.com/books?id=wFp2CQAAQBAJ&dq=intitle:The+Picture+of+Dorian+Gray+inauthor:Oscar+Wilde&hl=&source=gbs_api'
jane = GoogleBook.create! preview_image_link: 'http://books.google.com/books/content?id=au5BPgAACAAJ&printsec=frontcover&img=1&zoom=1&source=gbs_api', buy_now_link: 'http://books.google.com/books?id=au5BPgAACAAJ&dq=intitle:Jane+Eyre+inauthor:Charlotte+Bront%C3%AB&hl=&source=gbs_api'
frankie = GoogleBook.create! preview_image_link: 'http://books.google.com/books/content?id=03YZAwAAQBAJ&printsec=frontcover&img=1&zoom=1&edge=curl&source=gbs_api', buy_now_link: 'https://play.google.com/store/books/details?id=03YZAwAAQBAJ&source=gbs_api'
pride = GoogleBook.create! preview_image_link: 'http://books.google.com/books/content?id=Buu4rQEACAAJ&printsec=frontcover&img=1&zoom=1&source=gbs_api', buy_now_link: 'http://books.google.com/books?id=Buu4rQEACAAJ&dq=intitle:Pride+and+Prejudice+inauthor:Jane+Austen&hl=&source=gbs_api'
dracula = GoogleBook.create! preview_image_link: 'http://books.google.com/books/content?id=sCY6EAAAQBAJ&printsec=frontcover&img=1&zoom=1&edge=curl&source=gbs_api', buy_now_link: 'http://books.google.com/books?id=sCY6EAAAQBAJ&dq=intitle:Dracula+inauthor:Bram+Stoker&hl=&source=gbs_api'
huck = GoogleBook.create! preview_image_link: 'http://books.google.com/books/content?id=pi1gC_BNWtcC&printsec=frontcover&img=1&zoom=1&edge=curl&source=gbs_api', buy_now_link: 'http://books.google.com/books?id=pi1gC_BNWtcC&dq=intitle:The+Adventures+of+Huckleberry+Finn+inauthor:Mark+Twain&hl=&source=gbs_api'
count = GoogleBook.create! preview_image_link: 'http://books.google.com/books/content?id=QSZEAwAAQBAJ&printsec=frontcover&img=1&zoom=1&edge=curl&source=gbs_api', buy_now_link: 'https://play.google.com/store/books/details?id=QSZEAwAAQBAJ&source=gbs_api'
christmas = GoogleBook.create! preview_image_link: 'http://books.google.com/books/content?id=pGRTDQAAQBAJ&printsec=frontcover&img=1&zoom=1&edge=curl&source=gbs_api', buy_now_link: 'http://books.google.com/books?id=pGRTDQAAQBAJ&dq=intitle:A+Christmas+Carol+inauthor:Charles+Dickens&hl=&source=gbs_api'
wizard = GoogleBook.create! preview_image_link: 'http://books.google.com/books/content?id=wTP9a3YIMZ0C&printsec=frontcover&img=1&zoom=1&source=gbs_api', buy_now_link: 'http://books.google.com/books?id=wTP9a3YIMZ0C&dq=intitle:The+Wonderful+Wizard+of+Oz+inauthor:L.+Frank+Baum&hl=&source=gbs_api'
wuthering = GoogleBook.create! preview_image_link: 'http://books.google.com/books/content?id=JVFnDwAAQBAJ&printsec=frontcover&img=1&zoom=1&edge=curl&source=gbs_api', buy_now_link: 'https://play.google.com/store/books/details?id=JVFnDwAAQBAJ&source=gbs_api'

Book.create! name: 'The Picture of Dorian Gray', author: wilde, year: 1890, google_book: dorian
Book.create! name: 'Jane Eyre', author: bronte, year: 1847, google_book: jane
Book.create! name: 'Frankenstein', author: shelley, year: 1818, google_book: frankie
Book.create! name: 'Pride and Prejudice', author: austen, year: 1813, google_book: pride
Book.create! name: 'Dracula', author: stoker, year: 1897, google_book: dracula
Book.create! name: 'The Adventures of Huckleberry Finn', author: twain, year: 1884, google_book: huck
Book.create! name: 'The Count of Monte Cristo', author: dumas, year: 1845, google_book: count
Book.create! name: 'A Christmas Carol', author: dickens, year: 1843, google_book: christmas
Book.create! name: 'The Wonderful Wizard of Oz', author: baum, year: 1900, google_book: wizard
Book.create! name: 'Wuthering Heights', author: bronte2, year: 1847, google_book: wuthering
