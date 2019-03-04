class BooksController << ApplicationController

  def create
    @book = Book.create(book_params)
    render json: @book
  end
end

private

def book_params
  params.permit(:title, :author, :publisher, :description, :isbn_10, :page_count, :average_review, :thumbnail, :info_link, :retail_price)
end
