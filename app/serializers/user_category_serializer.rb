class UserCategorySerializer < ActiveModel::Serializer
  attributes :id, :amount, :date
  has_one :user
  has_one :category
end
