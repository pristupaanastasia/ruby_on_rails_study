Rails.application.routes.draw do
  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)
  resources :pages
  root 'pages#index'
  get '/pages/', to: 'pages#show'
  post '/pages/login', to: 'pages#login'

  get '/admin/my_models/delete/:id' => 'admin/my_models#delete', as: :delete

  get '/admin/my_models' => 'admin/my_models#index'
  post '/admin/my_models' => 'admin/my_models#create'


  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
