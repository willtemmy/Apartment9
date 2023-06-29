Rails.application.routes.draw do
  resources :leases, only: [:create, :destroy]
  resources :tenants, only: [:index, :show, :create, :update, :destroy]
  resources :apartmentts, only: [:index, :show, :create, :update, :destroy]
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html
  get '/Tenants', to: 'tenants#index'
  # Defines the root path route ("/")
  # root "articles#index"
end
