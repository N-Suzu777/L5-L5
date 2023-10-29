Rails.application.routes.draw do
  get 'top/main'
  get 'top/login'
  get 'top/logout'
  post 'top/login'
  
  get 'tweets/index'
  get 'tweets/new'
  post 'tweets/create'
  get 'tweets/destroy'
  #resources :tweets
  root 'tweets#index'
  delete 'tweets/:id' ,to: 'tweets#destroy'
  
  get 'users/index'
  get 'users/new'
  post 'users/create'
  post 'users/destroy'
  #resources :users #これを書いていればOKのはず？なぜか機能していない
  #root 'users#index'
  #get 'users/:id' ,to: 'users#destroy'
  delete 'users/:id' ,to: 'users#destroy'
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
  
end
#↑のgetとpostに注意
