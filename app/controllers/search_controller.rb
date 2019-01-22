class SearchController < ApplicationController
  def index
  end

  def new
  end

  def create
  end

  def show
    @q = params[:q]
    url = "https://www.googleapis.com/books/v1/volumes?q=#{ @q }"
    response = HTTParty.get url
    @cover = response["items"][0]["volumeInfo"]["imageLinks"]["thumbnail"]
    @items = response["items"]
  end

  def edit
  end

  def destroy
  end



end
