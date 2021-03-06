Rails.application.routes.draw do
  
  # comments用ルート
  post 'comments/create' => 'comments#create'
  get 'comments/create' => 'comments#create'
  post 'comments/:id/destroy' => 'comments#destroy'

  # addposts用ルート
  post 'addposts/create' => 'addposts#create'
  get 'addposts/index' => 'addposts#index'
  post 'addposts/:id/destroy' => 'addposts#destroy'

  # follows用ルート
  post 'follows/:user_id/create' => 'follows#create'
  post 'follows/:user_id/destroy' => 'follows#destroy'

  # likes用ルート
  post 'likes/:post_id/create' => 'likes#create'
  post 'likes/:post_id/destroy' => 'likes#destroy'

  # users用ルート
  get 'login' => 'users#login_form'
  post 'login' => 'users#login'
  post 'logout' => 'users#logout'

  post 'testuserlogin' => 'users#testuserlogin'

  post 'users/:id/update' => 'users#update'
  get 'users/:id/edit' => 'users#edit'

  post 'users/create' => 'users#create'

  get 'signup' => 'users#new'

  get 'users/index' => 'users#index'
  get 'users/:id' => 'users#show'

  get 'users/:id/likes' => 'users#likes'
  get 'users/:id/follows' => 'users#follows'
  get 'users/:id/comments' => 'users#comments'

  # posts用ルート
  get 'posts/index' => 'posts#index'
  get 'posts/new' => 'posts#new'
  post 'posts/create' => 'posts#create'
  get 'posts/:id/edit' => 'posts#edit'
  post 'posts/:id/update' => 'posts#update'
  post 'posts/:id/destroy' => 'posts#destroy'

  get 'posts/:id' => 'posts#show'
  post 'posts/addpost' => 'posts#addpost'

  get '/' => 'home#top'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  get 'about' => 'home#about'
end
