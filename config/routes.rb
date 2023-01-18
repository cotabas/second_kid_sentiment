Rails.application.routes.draw do
  resources :kid_votes
  devise_for :users
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html
  root "kid_votes#index"
  # Defines the root path route ("/")
  # root "articles#index"
end
