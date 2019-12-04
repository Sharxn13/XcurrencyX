Rails.application.routes.draw do
  devise_for :users
  get 'currencies/index'
  resources :lists
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  root 'currencies#index'
  post 'calculate', to: 'currencies#calculate'

resources :articles
end
