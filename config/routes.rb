Rails.application.routes.draw do
  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)
  resources :pages
  root 'pages#index'
  get '/pages/', to: 'pages#show'
  post '/pages/create' => 'pages#create'
  get '/pages/delete/:id' => 'pages#delete', as: :delete

  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
