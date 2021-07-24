Rails.application.routes.draw do
  resources :offices
  resources :employees
  resources :companies
  resources :buildings
  get 'home/building'
  root 'home#index'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
