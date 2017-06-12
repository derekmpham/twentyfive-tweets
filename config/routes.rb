Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :users, only: [:new, :create]

  root 'application#index'

  get "tweets" => "tweets#index"
  # post "tweets/tweet_search" => "tweets#tweet_search"
  # get "tweets/tweet_search" => "tweets#tweet_search"
  match "tweets/tweet_search" => "tweets#tweet_search", via: [:get, :post]

  get '/login' => 'sessions#new'
  post '/login' => 'sessions#create'
  get '/logout' => 'sessions#destroy'
end
