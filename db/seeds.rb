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

Category.create(name: "Rent/Mortgage")
Category.create(name: "Utilities")
Category.create(name: "Groceries")
Category.create(name: "Dining Out")
Category.create(name: "Shopping")
Category.create(name: "Misc")
Category.create(name: "Savings")
Category.create(name: "Health & Fitness")
Category.create(name: "Transportation")
Category.create(name: "Entertainment")
Category.create(name: "Donations")
# Category.create(name: "Income")


3.times do
    BankAccount.create(user_id: User.all.first.id, bank_name: Faker::Bank.name, account_type: "Checking")
end


UserCategory.create(user_id: User.all.first.id, user_name: User.all.first.name, category_id: Category.all[0].id, category_name: Category.all[0].name, amount: 2000.00, date: Faker::Date.between(from: '2020-09-30', to: '2020-09-30'))
UserCategory.create(user_id: User.all.first.id, user_name: User.all.first.name, category_id: Category.all[1].id, category_name: Category.all[1].name, amount: 200.00, date: Faker::Date.between(from: '2020-09-30', to: '2020-09-30'))
UserCategory.create(user_id: User.all.first.id, user_name: User.all.first.name, category_id: Category.all[2].id, category_name: Category.all[2].name, amount: 150.00, date: Faker::Date.between(from: '2020-09-30', to: '2020-09-30'))
UserCategory.create(user_id: User.all.first.id, user_name: User.all.first.name, category_id: Category.all[3].id, category_name: Category.all[3].name, amount: 100.00, date: Faker::Date.between(from: '2020-09-30', to: '2020-09-30'))
UserCategory.create(user_id: User.all.first.id, user_name: User.all.first.name, category_id: Category.all[4].id, category_name: Category.all[4].name, amount: 120.00, date: Faker::Date.between(from: '2020-09-30', to: '2020-09-30'))
UserCategory.create(user_id: User.all.first.id, user_name: User.all.first.name, category_id: Category.all[5].id, category_name: Category.all[5].name, amount: 300.00, date: Faker::Date.between(from: '2020-09-30', to: '2020-09-30'))
UserCategory.create(user_id: User.all.first.id, user_name: User.all.first.name, category_id: Category.all[6].id, category_name: Category.all[6].name, amount: 300.00, date: Faker::Date.between(from: '2020-09-30', to: '2020-09-30'))
UserCategory.create(user_id: User.all.first.id, user_name: User.all.first.name, category_id: Category.all[7].id, category_name: Category.all[7].name, amount: -3170, date: Faker::Date.between(from: '2020-09-30', to: '2020-09-30'))
# UserCategory.create(user_id: User.all.first.id, user_name: User.all.first.name, category_id: Category.all[6].id, category_name: Category.all[6].name, amount: rand(0..2000).to_f, date: Faker::Date.between(from: '2020-09-30', to: '2020-09-30'))


Transaction.create(bank_account_id: BankAccount.all.sample.id, category_id: Category.all[7].id, category_name: Category.all[7].name, amount: 3170, date: Faker::Date.between(from: '2020-09-30', to: '2020-09-30'), description: "Paycheck", trans_type: "Income")
Transaction.create(bank_account_id: BankAccount.all.sample.id, category_id: Category.all[1].id, category_name: Category.all[1].name, amount: -100, date: Faker::Date.between(from: '2020-09-30', to: '2020-09-30'), description: "Con Ed Sept Bill", trans_type: "Expense")
Transaction.create(bank_account_id: BankAccount.all.sample.id, category_id: Category.all[0].id, category_name: Category.all[0].name, amount: -2000, date: Faker::Date.between(from: '2020-09-30', to: '2020-09-30'), description: "Rent", trans_type: "Expense")
Transaction.create(bank_account_id: BankAccount.all.sample.id, category_id: Category.all[2].id, category_name: Category.all[2].name, amount: -60.55, date: Faker::Date.between(from: '2020-09-30', to: '2020-09-30'), description: "Trader Joe's", trans_type: "Expense")
Transaction.create(bank_account_id: BankAccount.all.sample.id, category_id: Category.all[3].id, category_name: Category.all[3].name, amount: -50.83, date: Faker::Date.between(from: '2020-09-30', to: '2020-09-30'), description: "Thai Food", trans_type: "Expense")
Transaction.create(bank_account_id: BankAccount.all.sample.id, category_id: Category.all[4].id, category_name: Category.all[4].name, amount: -40.52, date: Faker::Date.between(from: '2020-09-30', to: '2020-09-30'), description: "Gift for Niece", trans_type: "Expense")
Transaction.create(bank_account_id: BankAccount.all.sample.id, category_id: Category.all[5].id, category_name: Category.all[5].name, amount: -60.21, date: Faker::Date.between(from: '2020-09-30', to: '2020-09-30'), description: "Misc supplies from Amazon", trans_type: "Expense")
Transaction.create(bank_account_id: BankAccount.all.sample.id, category_id: Category.all[6].id, category_name: Category.all[6].name, amount: -300, date: Faker::Date.between(from: '2020-09-30', to: '2020-09-30'), description: "Savings Goal", trans_type: "Expense")
Transaction.create(bank_account_id: BankAccount.all.sample.id, category_id: Category.all[5].id, category_name: Category.all[5].name, amount: -40.21, date: Faker::Date.between(from: '2020-09-30', to: '2020-09-30'), description: "Lamp", trans_type: "Expense")
Transaction.create(bank_account_id: BankAccount.all.sample.id, category_id: Category.all[4].id, category_name: Category.all[4].name, amount: -80.23, date: Faker::Date.between(from: '2020-09-30', to: '2020-09-30'), description: "New Jacket", trans_type: "Expense")
Transaction.create(bank_account_id: BankAccount.all.sample.id, category_id: Category.all[3].id, category_name: Category.all[3].name, amount: -32.32, date: Faker::Date.between(from: '2020-09-30', to: '2020-09-30'), description: "Pizza", trans_type: "Expense")
Transaction.create(bank_account_id: BankAccount.all.sample.id, category_id: Category.all[2].id, category_name: Category.all[2].name, amount: -40, date: Faker::Date.between(from: '2020-09-30', to: '2020-09-30'), description: "Key Food", trans_type: "Expense")
# Transaction.create(bank_account_id: BankAccount.all.sample.id, category_id: Category.all[2].id, category_name: Category.all[2].name, amount: rand(-500..500).to_f, date: Faker::Date.between(from: '2020-09-30', to: '2020-09-30'), description: Faker::Commerce.product_name, trans_type: "transtype")
