class Transaction < ApplicationRecord
  belongs_to :category
  belongs_to :bank_account


end
