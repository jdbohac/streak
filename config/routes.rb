Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html
    resources :tools, only: [:index, :create, :update, :destroy]
  # Defines the root path route ("/")
  # root "articles#index"
end
