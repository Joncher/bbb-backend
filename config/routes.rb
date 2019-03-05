Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :books
  resources :users
  delete "/users/:user_id/books/:id", to: "users#delete_book"

end
