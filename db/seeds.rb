# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

UserCategory.destroy_all
Transaction.destroy_all
Category.destroy_all
BankAccount.destroy_all
User.destroy_all

1.times do
    User.create(name: Faker::Name.name, username: Faker::Name.middle_name, password: rand(123456..6123456).to_s)
end

7.times do
    Category.create(name: Faker::Commerce.department)
end

3.times do
    BankAccount.create(user_id: User.all.first.id, bank_name: Faker::Bank.name, account_type: "Checking")
end

15.times do
    UserCategory.create(user_id: User.all.first.id, category_id: Category.all.sample.id, amount: rand(-500..500).to_f, date: Faker::Date.between(from: '2020-01-01', to: '2020-09-30'))
end

30.times do
    Transaction.create(bank_account_id: BankAccount.all.sample.id, category_id: Category.all.sample.id, category_name: Category.all.sample.name, amount: rand(-500..500).to_f, date: Faker::Date.between(from: '2020-01-01', to: '2020-09-30'), description: Faker::Commerce.product_name, trans_type: "transtype")
end


# t.bigint "category_id", null: false
#     t.bigint "bank_account_id", null: false
#     t.date "date"
#     t.float "amount"
#     t.string "trans_type"
#     t.string "description"