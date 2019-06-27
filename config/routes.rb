Rails.application.routes.draw do
  devise_for :users
  get 'home/index'
  get 'tourisms/index'
  root to: "tourisms#index"
  # post 'devise/registrations' => 'users#show'
  post '/signup',  to: 'users#create'

  resources :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
