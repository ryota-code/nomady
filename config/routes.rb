Rails.application.routes.draw do
  root 'cafeposts#index'
  
  # ユーザー
  get '/signup' => "users#new"
  resources :users do
    member do
      get :followings, :followers
    end
  end
  
  # ゲストユーザーログイン
  post '/guest_login' => 'guest_sessions#create' 
  
  # セッション
  get '/login' => 'sessions#new'
  post '/login' => 'sessions#create'
  delete '/logout' => 'sessions#destroy'
  
  #投稿
  get '/post' => 'cafeposts#new'
  get '/cafeposts/gmap' => 'cafeposts#gmap'
  get 'tags/:tag_name', to: 'cafeposts#tagindex', as: :tag_name
  resources :cafeposts do
    resources :comments
  end
  
  #お気に入り
  resources :favorites, only: [:create, :destroy]
  
  # follow follower
  resources :relationships, only: [:create, :destroy]
end
