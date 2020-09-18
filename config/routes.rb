Rails.application.routes.draw do
  resources :transactions
  resources :user_categories
  resources :bank_accounts
  resources :categories
  resources :users
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
