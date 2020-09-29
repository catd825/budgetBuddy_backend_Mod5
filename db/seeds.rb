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

# 1.times do
#     User.create(name: "Cathy", username: "catd825", password_digest: "password")
# end


User.create!(name: 'Cathy',
             username: 'catd825',
             password_digest: BCrypt::Password.create('password')) 

User.create!(name: 'another user',
             username: 'user',
             password_digest: BCrypt::Password.create('123'))              

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
Category.create(name: "Income")



BankAccount.create(user_id: User.all.first.id, bank_name: Faker::Bank.name, account_type: "Checking")
BankAccount.create(user_id: User.all.second.id, bank_name: Faker::Bank.name, account_type: "Checking")


UserCategory.create(user_id: User.all.second.id, user_name: User.all.second.name, category_id: Category.all[0].id, category_name: Category.all[0].name, amount: 4000.00, month: 9, trans_type: "Expense")
UserCategory.create(user_id: User.all.second.id, user_name: User.all.second.name, category_id: Category.all[2].id, category_name: Category.all[2].name, amount: 150.00, month: 9,trans_type: "Expense")


UserCategory.create(user_id: User.all.first.id, user_name: User.all.first.name, category_id: Category.all[0].id, category_name: Category.all[0].name, amount: 1500.00, month: 9, trans_type: "Expense")
UserCategory.create(user_id: User.all.first.id, user_name: User.all.first.name, category_id: Category.all[1].id, category_name: Category.all[1].name, amount: 500.00, month: 9,trans_type: "Expense")
UserCategory.create(user_id: User.all.first.id, user_name: User.all.first.name, category_id: Category.all[2].id, category_name: Category.all[2].name, amount: 100.00, month: 9,trans_type: "Expense")
UserCategory.create(user_id: User.all.first.id, user_name: User.all.first.name, category_id: Category.all[3].id, category_name: Category.all[3].name, amount: 150.00, month: 9,trans_type: "Expense")
UserCategory.create(user_id: User.all.first.id, user_name: User.all.first.name, category_id: Category.all[4].id, category_name: Category.all[4].name, amount: 140.00, month: 9,trans_type: "Expense")
UserCategory.create(user_id: User.all.first.id, user_name: User.all.first.name, category_id: Category.all[5].id, category_name: Category.all[5].name, amount: 50.00, month: 9,trans_type: "Expense")
UserCategory.create(user_id: User.all.first.id, user_name: User.all.first.name, category_id: Category.all[7].id, category_name: Category.all[7].name, amount: 0, month: 9,trans_type: "Expense")
UserCategory.create(user_id: User.all.first.id, user_name: User.all.first.name, category_id: Category.all[8].id, category_name: Category.all[8].name, amount: 0, month: 9,trans_type: "Expense")
UserCategory.create(user_id: User.all.first.id, user_name: User.all.first.name, category_id: Category.all[9].id, category_name: Category.all[9].name, amount: 0, month: 9,trans_type: "Expense")
UserCategory.create(user_id: User.all.first.id, user_name: User.all.first.name, category_id: Category.all[10].id, category_name: Category.all[10].name, amount: 0, month: 9,trans_type: "Expense")
UserCategory.create(user_id: User.all.first.id, user_name: User.all.first.name, category_id: Category.all[11].id, category_name: Category.all[11].name, amount: -3170, month: 9,trans_type: "Income")


UserCategory.create(user_id: User.all.first.id, user_name: User.all.first.name, category_id: Category.all[0].id, category_name: Category.all[0].name, amount: 2000.00, month: 10, trans_type: "Expense")
UserCategory.create(user_id: User.all.first.id, user_name: User.all.first.name, category_id: Category.all[1].id, category_name: Category.all[1].name, amount: 200.00, month: 10,trans_type: "Expense")
UserCategory.create(user_id: User.all.first.id, user_name: User.all.first.name, category_id: Category.all[2].id, category_name: Category.all[2].name, amount: 150.00, month: 10,trans_type: "Expense")
UserCategory.create(user_id: User.all.first.id, user_name: User.all.first.name, category_id: Category.all[3].id, category_name: Category.all[3].name, amount: 100.00, month: 10,trans_type: "Expense")
UserCategory.create(user_id: User.all.first.id, user_name: User.all.first.name, category_id: Category.all[4].id, category_name: Category.all[4].name, amount: 120.00, month: 10,trans_type: "Expense")
UserCategory.create(user_id: User.all.first.id, user_name: User.all.first.name, category_id: Category.all[5].id, category_name: Category.all[5].name, amount: 300.00, month: 10,trans_type: "Expense")
UserCategory.create(user_id: User.all.first.id, user_name: User.all.first.name, category_id: Category.all[7].id, category_name: Category.all[7].name, amount: 0, month: 10,trans_type: "Expense")
UserCategory.create(user_id: User.all.first.id, user_name: User.all.first.name, category_id: Category.all[8].id, category_name: Category.all[8].name, amount: 50, month: 10,trans_type: "Expense")
UserCategory.create(user_id: User.all.first.id, user_name: User.all.first.name, category_id: Category.all[9].id, category_name: Category.all[9].name, amount: 0, month: 10,trans_type: "Expense")
UserCategory.create(user_id: User.all.first.id, user_name: User.all.first.name, category_id: Category.all[10].id, category_name: Category.all[10].name, amount: 0, month: 10,trans_type: "Expense")
UserCategory.create(user_id: User.all.first.id, user_name: User.all.first.name, category_id: Category.all[11].id, category_name: Category.all[11].name, amount: -3170, month: 10,trans_type: "Income")


Transaction.create(bank_account_id: BankAccount.all.first.id, category_id: Category.all[0].id, category_name: Category.all[0].name, amount: -2000, date: Date.new(2020,9,30), month: 9, description: "Rent", trans_type: "Expense", user_id: User.all.first.id)
Transaction.create(bank_account_id: BankAccount.all.first.id, category_id: Category.all[0].id, category_name: Category.all[0].name, amount: -2000, date: Date.new(2020,10,31), month: 10, description: "Rent", trans_type: "Expense", user_id: User.all.first.id)


Transaction.create(bank_account_id: BankAccount.all.first.id, category_id: Category.all[11].id, category_name: Category.all[11].name, amount: 3170, date: Date.new(2020,9,30), month: 9, description: "Paycheck", trans_type: "Income", user_id: User.all.first.id)
Transaction.create(bank_account_id: BankAccount.all.first.id, category_id: Category.all[1].id, category_name: Category.all[1].name, amount: -100, date: Date.new(2020,9,30), month: 9, description: "Con Ed Sept Bill", trans_type: "Expense", user_id: User.all.first.id)
Transaction.create(bank_account_id: BankAccount.all.first.id, category_id: Category.all[2].id, category_name: Category.all[2].name, amount: -60.55, date: Date.new(2020,9,30), month: 9, description: "Trader Joe's", trans_type: "Expense", user_id: User.all.first.id)
Transaction.create(bank_account_id: BankAccount.all.first.id, category_id: Category.all[3].id, category_name: Category.all[3].name, amount: -50.83, date: Date.new(2020,9,30), month: 9, description: "Thai Food", trans_type: "Expense", user_id: User.all.first.id)
Transaction.create(bank_account_id: BankAccount.all.first.id, category_id: Category.all[4].id, category_name: Category.all[4].name, amount: -40.52, date: Date.new(2020,9,30), month: 9, description: "Gift for Niece", trans_type: "Expense", user_id: User.all.first.id)
Transaction.create(bank_account_id: BankAccount.all.first.id, category_id: Category.all[5].id, category_name: Category.all[5].name, amount: -60.21, date: Date.new(2020,9,30), month: 9, description: "Misc supplies from Amazon", trans_type: "Expense", user_id: User.all.first.id)
Transaction.create(bank_account_id: BankAccount.all.first.id, category_id: Category.all[5].id, category_name: Category.all[5].name, amount: -40.21, date: Date.new(2020,9,30), month: 9, description: "Lamp", trans_type: "Expense", user_id: User.all.first.id)
Transaction.create(bank_account_id: BankAccount.all.first.id, category_id: Category.all[4].id, category_name: Category.all[4].name, amount: -80.23, date: Date.new(2020,9,30), month: 9, description: "New Jacket", trans_type: "Expense", user_id: User.all.first.id)
Transaction.create(bank_account_id: BankAccount.all.first.id, category_id: Category.all[3].id, category_name: Category.all[3].name, amount: -32.32, date: Date.new(2020,9,30), month: 9, description: "Pizza", trans_type: "Expense", user_id: User.all.first.id)
Transaction.create(bank_account_id: BankAccount.all.first.id, category_id: Category.all[2].id, category_name: Category.all[2].name, amount: -750, date: Date.new(2020,9,30), month: 9, description: "Key Food", trans_type: "Expense", user_id: User.all.first.id)
Transaction.create(bank_account_id: BankAccount.all.first.id, category_id: Category.all[10].id, category_name: Category.all[10].name, amount: -50, date: Date.new(2020,9,30), month: 9, description: "ACLU", trans_type: "Expense", user_id: User.all.first.id)


Transaction.create(bank_account_id: BankAccount.all.first.id, category_id: Category.all[11].id, category_name: Category.all[11].name, amount: 3170, date: Date.new(2020,10,31), month: 10, description: "Paycheck", trans_type: "Income", user_id: User.all.first.id)
Transaction.create(bank_account_id: BankAccount.all.first.id, category_id: Category.all[11].id, category_name: Category.all[11].name, amount: 100, date: Date.new(2020,10,31), month: 10, description: "Birthday Gift", trans_type: "Income", user_id: User.all.first.id)
Transaction.create(bank_account_id: BankAccount.all.first.id, category_id: Category.all[1].id, category_name: Category.all[1].name, amount: -100, date: Date.new(2020,10,31), month: 10, description: "Con Ed Aug Bill", trans_type: "Expense", user_id: User.all.first.id)
Transaction.create(bank_account_id: BankAccount.all.first.id, category_id: Category.all[2].id, category_name: Category.all[2].name, amount: -60.55, date: Date.new(2020,10,31), month: 10, description: "Trader Joe's", trans_type: "Expense", user_id: User.all.first.id)
Transaction.create(bank_account_id: BankAccount.all.first.id, category_id: Category.all[3].id, category_name: Category.all[3].name, amount: -50.83, date: Date.new(2020,10,31), month: 10, description: "Italian Food", trans_type: "Expense", user_id: User.all.first.id)
Transaction.create(bank_account_id: BankAccount.all.first.id, category_id: Category.all[5].id, category_name: Category.all[5].name, amount: -60.21, date: Date.new(2020,10,31), month: 10, description: "Shampoo", trans_type: "Expense", user_id: User.all.first.id)
Transaction.create(bank_account_id: BankAccount.all.first.id, category_id: Category.all[5].id, category_name: Category.all[5].name, amount: -40.00, date: Date.new(2020,10,31), month: 10, description: "ATM", trans_type: "Expense", user_id: User.all.first.id)
Transaction.create(bank_account_id: BankAccount.all.first.id, category_id: Category.all[4].id, category_name: Category.all[4].name, amount: -80.23, date: Date.new(2020,10,31), month: 10, description: "New Top", trans_type: "Expense", user_id: User.all.first.id)
Transaction.create(bank_account_id: BankAccount.all.first.id, category_id: Category.all[3].id, category_name: Category.all[3].name, amount: -32.32, date: Date.new(2020,10,31), month: 10, description: "Pizza", trans_type: "Expense", user_id: User.all.first.id)
Transaction.create(bank_account_id: BankAccount.all.first.id, category_id: Category.all[2].id, category_name: Category.all[2].name, amount: -40, date: Date.new(2020,10,31), month: 10, description: "Key Food", trans_type: "Expense", user_id: User.all.first.id)


# only works for sept?
Transaction.create(bank_account_id: BankAccount.all.second.id, category_id: Category.all[0].id, category_name: Category.all[0].name, amount: -1200, date: Date.new(2020,9,30), month: 9, description: "Rent", trans_type: "Expense", user_id: User.all.second.id)
# Transaction.create(bank_account_id: BankAccount.all.second.id, category_id: Category.all[0].id, category_name: Category.all[0].name, amount: -1000, date: Date.new(2020,10,31), month: 10, description: "Rent", trans_type: "Expense", user_id: User.all.second.id)
# Transaction.create(bank_account_id: BankAccount.all.second.id, category_id: Category.all[2].id, category_name: Category.all[2].name, amount: -40, date: Date.new(2020,10,31), month: 10, description: "Key Food", trans_type: "Expense", user_id: User.all.second.id)
Transaction.create(bank_account_id: BankAccount.all.second.id, category_id: Category.all[2].id, category_name: Category.all[2].name, amount: -52.21, date: Date.new(2020,9,30), month: 9, description: "Trader Joe's", trans_type: "Expense", user_id: User.all.second.id)