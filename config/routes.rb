Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :books, only: [:index]
  resources :users
  post "/books/:user_id", to: "books#create"
  get "/users/:id/books", to: "users#get_my_books"
  delete "/users/:user_id/books/:id", to: "users#delete_book"
end
