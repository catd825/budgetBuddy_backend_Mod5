class Category < ApplicationRecord
  # belongs_to :user
  has_many :user_categories
  has_many :users, through: :user_categories
  has_many :transactions
end
