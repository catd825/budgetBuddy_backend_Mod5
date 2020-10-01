Rails.application.routes.draw do
  get 'api/v1/users/:id/transactions', to: 'api/v1/users#retrieve_transactions'
  get 'api/v1/users/:id/categories', to: 'api/v1/users#retrieve_categories'
  get 'api/v1/users/:id/user_categories', to: 'api/v1/users#retrieve_user_categories'
  get 'api/v1/users/:id/bank_accounts', to: 'api/v1/users#retrieve_bank_accounts'



  
  
  resources :transactions
  resources :user_categories
  resources :bank_accounts
  resources :categories
  namespace :api do
    namespace :v1 do
      resources :users, only: [:create, :index]
      post '/login', to: 'auth#create'
      get '/profile', to: 'users#profile'
    end
  end
end
