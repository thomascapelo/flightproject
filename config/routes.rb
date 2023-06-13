Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
  root 'flights#index'
  resources :flights, only: [:index, :show]
  get '/flights/search', to: 'flights#search', as: 'search_flights'
end
