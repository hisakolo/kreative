Rails.application.routes.draw do
  root 'products#index'

  resources :users,only: [:new, :create]

  resources :products

  get "about" => "products#about"
  get "price" => "products#price"
  get "works" => "products#works"
end
