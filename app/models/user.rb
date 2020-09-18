class User < ApplicationRecord
    has_many :user_categories
    has_many :categories, through: :user_categories
    has_many :bank_accounts
    has_many :transactions, through: :bank_accounts
    has_many :transactions
end
