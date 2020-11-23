Rails.application.routes.draw do
  devise_for :users, path: 'users'
  devise_for :admin_users, ActiveAdmin::Devise.config
  namespace :api do
    namespace :v1 do
      resources :categories 
    end
  end
  ActiveAdmin.routes(self)
  resources :pages
  resources :my_models
  resources :profiles
  root 'pages#index'

  put 'profiles/:id', to: 'profiles#update', as: 'update_profiles' 
  get 'pages/:id', to: 'pages#show', as: 'page_show'
  post 'pages/login', to: 'pages#login'
  get '/api/v1/category/:id', to: 'api/v1/category#show', as: 'page_catalog'

  get '/admin/my_models/delete/:id' => 'admin/my_models#delete', as: :delete
  get '/admin/my_models/edit/:id' => 'admin/my_models#edit', as: 'news_edit'
  
  patch '/admin/my_models/edit/:id' => 'admin/my_models#update', as: 'news_update'
  get '/admin/my_models' => 'admin/my_models#index'
  post '/admin/my_models' => 'admin/my_models#create'
  post '/api/v1/category' => 'api/v1/category#create', as: 'category_create'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
