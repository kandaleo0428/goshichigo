Rails.application.routes.draw do
  # users用ルート
  get 'users/index' => 'users#index'
  get 'users/:id' => 'users#index'


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
