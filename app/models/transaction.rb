class Transaction < ApplicationRecord
  belongs_to :category
  belongs_to :bank_account
  # belongs_to :user, through: :category

end
