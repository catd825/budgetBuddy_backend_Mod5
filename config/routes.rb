Rails.application.routes.draw do
  get 'api/v1/users/:id/transactions', to: 'api/v1/users#retrieve_transactions'

  
  
  resources :transactions
  resources :user_categories
  resources :bank_accounts
  resources :categories
  # resources :users
  namespace :api do
    namespace :v1 do
      resources :users, only: [:create, :index]
      post '/login', to: 'auth#create'
      get '/profile', to: 'users#profile'
    end
  end
end
