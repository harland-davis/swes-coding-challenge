Rails.application.routes.draw do
  resources :employees
  resources :companies
  resources :offices
  resources :buildings
  
  get 'home/building'
  get 'home/companies'
  root 'home#index'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end


