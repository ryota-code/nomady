Rails.application.routes.draw do
  get '/' => "home#top"
  
  # ユーザー
  get '/signup' => "users#new"
  resources :users
  
  # セッション
  get '/login' => 'sessions#new'
  post '/login' => 'sessions#create'
  delete '/logout' => 'sessions#destroy'
  
  #投稿
  get '/post' => 'cafeposts#new'
  resources :cafeposts
end
