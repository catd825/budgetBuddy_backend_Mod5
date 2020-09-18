class TransactionSerializer < ActiveModel::Serializer
  attributes :id, :date, :amount, :trans_type, :description
  has_one :category
  has_one :bank_account
end
