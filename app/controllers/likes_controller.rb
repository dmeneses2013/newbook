class LikesController < ApplicationController

  def create
    book = Book.find_by(google_id: params[:google_id])
    if @current_user.present?
        @current_user.books << book
      else
        redirect_to new_user_path
      end
  end

  def destroy
    book = Book.find_by(google_id: params[:google_id])
    @current_user.books.delete(book)
    @books = @current_user.books
    render :index
  end

  def index
    @books = @current_user.books
  end

  private

  def like_params
    params.require(:user_id, :book_id)
  end

end
