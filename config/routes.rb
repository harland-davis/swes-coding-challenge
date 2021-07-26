Rails.application.routes.draw do
  resources :buildings do
    resources :offices
      resources :companies
        resources :employees
  end

  root 'buildings#index'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end


