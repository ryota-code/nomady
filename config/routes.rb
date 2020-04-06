Rails.application.routes.draw do
  root 'home#top'
  
  # ユーザー
  get '/signup' => "users#new"
  resources :users
  
  # セッション
  get '/login' => 'sessions#new'
  post '/login' => 'sessions#create'
  delete '/logout' => 'sessions#destroy'
  
  #投稿
  get '/cafepost' => "cafeposts#index"
  get '/post' => 'cafeposts#new'
  resources :cafeposts
  
  # リレーションシップ
  resources :relationships, only: [:create, :destroy]
end
