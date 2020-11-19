Rails.application.routes.draw do
  devise_for :admin_users, ActiveAdmin::Devise.config
  scope module: :v1 do
    resources :data_news, only: [:show]
  end
  ActiveAdmin.routes(self)
  resources :pages
  resources :my_models
  resources :category
  root 'pages#index'
  get '/pages/:id', to: 'pages#show', as: 'page_show'
  post '/pages/login', to: 'pages#login'
  get '/pages/catalog/:id', to: 'pages#catalog', as: 'page_catalog'

  get '/admin/my_models/delete/:id' => 'admin/my_models#delete', as: :delete
  get '/admin/my_models/edit/:id' => 'admin/my_models#edit', as: 'news_edit'
  
  patch '/admin/my_models/edit/:id' => 'admin/my_models#update', as: 'news_update'
  get '/admin/my_models' => 'admin/my_models#index'
  post '/admin/my_models' => 'admin/my_models#create'
  post '/category' => 'category#create', as: 'category_create'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
