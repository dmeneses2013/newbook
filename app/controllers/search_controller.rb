class SearchController < ApplicationController

  def index
  end

  def show
    @q = params[:q]
    @q = 'Oops' if !@q.present?
    url = "https://www.googleapis.com/books/v1/volumes?q=#{ @q }"
    response = HTTParty.get url
    @items = response["items"]
  end

end
