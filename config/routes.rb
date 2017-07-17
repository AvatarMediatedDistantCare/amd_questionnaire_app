Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root 'enquette#index'
  get 'explain', to: 'enquette#explain'
  resources :answers
  resources :users
  resources :enquettes
  resources :sessions
end
