Rails.application.routes.draw do
  resources :transactions
  resources :user_categories
  resources :bank_accounts
  resources :categories
  resources :users
  # namespace :api do
  #   namespace :v1 do
  #     resources :users, only: [:create, :index]
  #     post '/login', to: 'auth#create'
  #     get '/profile', to: 'users#profile'
  #   end
  # end
end
