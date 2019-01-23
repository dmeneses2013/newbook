class BooksController < ApplicationController

   def new
    url = "https://www.googleapis.com/books/v1/volumes/#{params[:id]}"
    @response = HTTParty.get url
    @book_id = params[:id]
    # Adds book to DB
    book = Book.find_by(google_id: params[:id])
    title = @response["volumeInfo"]["title"]
    if  @response["volumeInfo"]["imageLinks"]["thumbnail"].present?
      cover = @response["volumeInfo"]["imageLinks"]["thumbnail"]
    else
      cover = 'https://vignette.wikia.nocookie.net/pineapplepedia/images/3/3c/No-images-placeholder.png/revision/latest?cb=20171113170721'
    end
    Book.create(:google_id => @book_id, :title => title, :cover => cover) if !book.present?
   end

end
