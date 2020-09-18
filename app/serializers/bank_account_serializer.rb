class BankAccountSerializer < ActiveModel::Serializer
  attributes :id, :bank_name, :account_type
  has_one :user
end
