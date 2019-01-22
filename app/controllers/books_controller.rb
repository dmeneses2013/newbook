class BooksController < ApplicationController

   def show
    url = "https://www.googleapis.com/books/v1/volumes/#{params[:id]}"
    @response = HTTParty.get url
   end

   def create
     if @current_user.present?

     else

     end
   end

end
