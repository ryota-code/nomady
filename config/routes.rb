Rails.application.routes.draw do
  root 'home#top'
  
  # ユーザー
  get '/signup' => "users#new"
  resources :users do
    member do
      get :followings, :followers
    end
  end
  
  # セッション
  get '/login' => 'sessions#new'
  post '/login' => 'sessions#create'
  delete '/logout' => 'sessions#destroy'
  
  #投稿
  get '/post' => 'cafeposts#new'
  get 'cafeposts/:id' => 'cafeposts#show'
  resources :cafeposts do
    post 'add' => 'favorites#create'
    delete '/add' => 'favorites#destroy'
  end
  
  # リレーションシップ
  resources :relationships, only: [:create, :destroy]
end
