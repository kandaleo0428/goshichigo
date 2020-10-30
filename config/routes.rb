Rails.application.routes.draw do
  
  # comments用ルート
  post 'comments/create' => 'comments#create'
  post 'comments/:id/destroy' => 'comments#destroy'

  # likes用ルート
  post 'likes/:post_id/create' => 'likes#create'
  post 'likes/:post_id/destroy' => 'likes#destroy'

  # users用ルート
  get 'login' => 'users#login_form'
  post 'login' => 'users#login'
  post 'logout' => 'users#logout'

  post 'users/:id/update' => 'users#update'
  get 'users/:id/edit' => 'users#edit'

  post 'users/create' => 'users#create'

  get 'signup' => 'users#new'

  get 'users/index' => 'users#index'
  get 'users/:id' => 'users#show'

  get 'users/:id/likes' => 'users#likes'

  # posts用ルート
  get 'posts/index' => 'posts#index'
  get 'posts/new' => 'posts#new'
  post 'posts/create' => 'posts#create'
  get 'posts/:id/edit' => 'posts#edit'
  post 'posts/:id/update' => 'posts#update'
  post 'posts/:id/destroy' => 'posts#destroy'

  get 'posts/:id' => 'posts#show'

  get '/' => 'home#top'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  get 'about' => 'home#about'
end
