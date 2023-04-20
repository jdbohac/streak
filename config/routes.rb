Rails.application.routes.draw do
  resources :materials
  resources :consumables
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html
    resources :tools
  # Defines the root path route ("/")
  # root "articles#index"
end
