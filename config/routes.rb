Rails.application.routes.draw do


  get '/ingredients', to:'ingredients#index', as: 'ingredients'


  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  root to: "posts#index"

  get '/posts', to:'posts#index', as: 'posts'
  get '/search', to:'posts#search'

  resources :posts
  resources :ingredients
end
