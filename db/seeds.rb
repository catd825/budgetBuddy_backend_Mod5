
UserCategory.destroy_all
Transaction.destroy_all
Category.destroy_all
BankAccount.destroy_all
User.destroy_all

User.create!(name: 'Cathy',
             username: 'catd825',
             password_digest: BCrypt::Password.create('password')) 

User.create!(name: 'another user',
             username: 'user',
             password_digest: BCrypt::Password.create('123'))              

Category.create(name: "Rent/Mortgage") #0
Category.create(name: "Utilities") #1
Category.create(name: "Groceries") #2
Category.create(name: "Dining Out") #3
Category.create(name: "Shopping") #4
Category.create(name: "Misc") #5
Category.create(name: "Health & Fitness") #6
Category.create(name: "Transportation") #7
Category.create(name: "Entertainment") #8
Category.create(name: "Donations") #9
Category.create(name: "Income") #10
Category.create(name: "Travel") #11
Category.create(name: "Subscriptions") #12
Category.create(name: "Loans") #13
Category.create(name: "Insurance") #13



BankAccount.create(id: 1, user_id: User.all.first.id, bank_name: Faker::Bank.name, account_type: "Checking")
BankAccount.create(id: 2, user_id: User.all.second.id, bank_name: Faker::Bank.name, account_type: "Checking")


UserCategory.create(user_id: User.all.second.id, user_name: User.all.second.name, category_id: Category.all[0].id, category_name: Category.all[0].name, amount: 4000.00, month: 9, trans_type: "Expense")
UserCategory.create(user_id: User.all.second.id, user_name: User.all.second.name, category_id: Category.all[2].id, category_name: Category.all[2].name, amount: 150.00, month: 9,trans_type: "Expense")


UserCategory.create(user_id: User.all.first.id, user_name: User.all.first.name, category_id: Category.all[0].id, category_name: Category.all[0].name, amount: 900.00, month: 8, trans_type: "Expense")
UserCategory.create(user_id: User.all.first.id, user_name: User.all.first.name, category_id: Category.all[1].id, category_name: Category.all[1].name, amount: 300.00, month: 8,trans_type: "Expense")
UserCategory.create(user_id: User.all.first.id, user_name: User.all.first.name, category_id: Category.all[2].id, category_name: Category.all[2].name, amount: 210.00, month: 8,trans_type: "Expense")
UserCategory.create(user_id: User.all.first.id, user_name: User.all.first.name, category_id: Category.all[3].id, category_name: Category.all[3].name, amount: 100.00, month: 8,trans_type: "Expense")
UserCategory.create(user_id: User.all.first.id, user_name: User.all.first.name, category_id: Category.all[4].id, category_name: Category.all[4].name, amount: 140.00, month: 8,trans_type: "Expense")
UserCategory.create(user_id: User.all.first.id, user_name: User.all.first.name, category_id: Category.all[5].id, category_name: Category.all[5].name, amount: 330.00, month: 8,trans_type: "Expense")
UserCategory.create(user_id: User.all.first.id, user_name: User.all.first.name, category_id: Category.all[6].id, category_name: Category.all[6].name, amount: 50, month: 8,trans_type: "Expense")
UserCategory.create(user_id: User.all.first.id, user_name: User.all.first.name, category_id: Category.all[7].id, category_name: Category.all[7].name, amount: 0, month: 8,trans_type: "Expense")
UserCategory.create(user_id: User.all.first.id, user_name: User.all.first.name, category_id: Category.all[8].id, category_name: Category.all[8].name, amount: 50, month: 8,trans_type: "Expense")
UserCategory.create(user_id: User.all.first.id, user_name: User.all.first.name, category_id: Category.all[9].id, category_name: Category.all[9].name, amount: 40, month: 8,trans_type: "Expense")
UserCategory.create(user_id: User.all.first.id, user_name: User.all.first.name, category_id: Category.all[11].id, category_name: Category.all[11].name, amount: 0, month: 8,trans_type: "Expense")
UserCategory.create(user_id: User.all.first.id, user_name: User.all.first.name, category_id: Category.all[12].id, category_name: Category.all[12].name, amount: 45, month: 8,trans_type: "Expense")
UserCategory.create(user_id: User.all.first.id, user_name: User.all.first.name, category_id: Category.all[10].id, category_name: Category.all[10].name, amount: -3000, month: 8,trans_type: "Income")

UserCategory.create(user_id: User.all.first.id, user_name: User.all.first.name, category_id: Category.all[0].id, category_name: Category.all[0].name, amount: 900.00, month: 9, trans_type: "Expense")
UserCategory.create(user_id: User.all.first.id, user_name: User.all.first.name, category_id: Category.all[1].id, category_name: Category.all[1].name, amount: 200.00, month: 9,trans_type: "Expense")
UserCategory.create(user_id: User.all.first.id, user_name: User.all.first.name, category_id: Category.all[2].id, category_name: Category.all[2].name, amount: 200.00, month: 9,trans_type: "Expense")
UserCategory.create(user_id: User.all.first.id, user_name: User.all.first.name, category_id: Category.all[3].id, category_name: Category.all[3].name, amount: 200.00, month: 9,trans_type: "Expense")
# UserCategory.create(user_id: User.all.first.id, user_name: User.all.first.name, category_id: Category.all[4].id, category_name: Category.all[4].name, amount: 100.00, month: 9,trans_type: "Expense")
UserCategory.create(user_id: User.all.first.id, user_name: User.all.first.name, category_id: Category.all[5].id, category_name: Category.all[5].name, amount: 300.00, month: 9,trans_type: "Expense")
UserCategory.create(user_id: User.all.first.id, user_name: User.all.first.name, category_id: Category.all[6].id, category_name: Category.all[6].name, amount: 50, month: 9,trans_type: "Expense")
# UserCategory.create(user_id: User.all.first.id, user_name: User.all.first.name, category_id: Category.all[7].id, category_name: Category.all[7].name, amount: 0, month: 9,trans_type: "Expense")
UserCategory.create(user_id: User.all.first.id, user_name: User.all.first.name, category_id: Category.all[8].id, category_name: Category.all[8].name, amount: 50, month: 9,trans_type: "Expense")
UserCategory.create(user_id: User.all.first.id, user_name: User.all.first.name, category_id: Category.all[9].id, category_name: Category.all[9].name, amount: 40, month: 9,trans_type: "Expense")
# UserCategory.create(user_id: User.all.first.id, user_name: User.all.first.name, category_id: Category.all[11].id, category_name: Category.all[11].name, amount: 0, month: 9,trans_type: "Expense")
UserCategory.create(user_id: User.all.first.id, user_name: User.all.first.name, category_id: Category.all[12].id, category_name: Category.all[12].name, amount: 40, month: 9,trans_type: "Expense")
UserCategory.create(user_id: User.all.first.id, user_name: User.all.first.name, category_id: Category.all[10].id, category_name: Category.all[10].name, amount: -3000, month: 9,trans_type: "Income")


UserCategory.create(user_id: User.all.first.id, user_name: User.all.first.name, category_id: Category.all[0].id, category_name: Category.all[0].name, amount: 900.00, month: 10, trans_type: "Expense")
UserCategory.create(user_id: User.all.first.id, user_name: User.all.first.name, category_id: Category.all[1].id, category_name: Category.all[1].name, amount: 100.00, month: 10,trans_type: "Expense")
UserCategory.create(user_id: User.all.first.id, user_name: User.all.first.name, category_id: Category.all[2].id, category_name: Category.all[2].name, amount: 150.00, month: 10,trans_type: "Expense")
UserCategory.create(user_id: User.all.first.id, user_name: User.all.first.name, category_id: Category.all[3].id, category_name: Category.all[3].name, amount: 200.00, month: 10,trans_type: "Expense")
# UserCategory.create(user_id: User.all.first.id, user_name: User.all.first.name, category_id: Category.all[4].id, category_name: Category.all[4].name, amount: 0, month: 10,trans_type: "Expense")
UserCategory.create(user_id: User.all.first.id, user_name: User.all.first.name, category_id: Category.all[5].id, category_name: Category.all[5].name, amount: 300.00, month: 10,trans_type: "Expense")
UserCategory.create(user_id: User.all.first.id, user_name: User.all.first.name, category_id: Category.all[6].id, category_name: Category.all[6].name, amount: 50, month: 10,trans_type: "Expense")
UserCategory.create(user_id: User.all.first.id, user_name: User.all.first.name, category_id: Category.all[7].id, category_name: Category.all[7].name, amount: 25, month: 10,trans_type: "Expense")
UserCategory.create(user_id: User.all.first.id, user_name: User.all.first.name, category_id: Category.all[8].id, category_name: Category.all[8].name, amount: 50, month: 10,trans_type: "Expense")
# UserCategory.create(user_id: User.all.first.id, user_name: User.all.first.name, category_id: Category.all[9].id, category_name: Category.all[9].name, amount: 0, month: 10,trans_type: "Expense")
UserCategory.create(user_id: User.all.first.id, user_name: User.all.first.name, category_id: Category.all[11].id, category_name: Category.all[11].name, amount: 300, month: 10,trans_type: "Expense")
UserCategory.create(user_id: User.all.first.id, user_name: User.all.first.name, category_id: Category.all[12].id, category_name: Category.all[12].name, amount: 30, month: 10,trans_type: "Expense")
UserCategory.create(user_id: User.all.first.id, user_name: User.all.first.name, category_id: Category.all[10].id, category_name: Category.all[10].name, amount: -3000, month: 10,trans_type: "Income")



Transaction.create(bank_account_id: BankAccount.all.first.id, category_id: Category.all[0].id, category_name: Category.all[0].name, amount: -900, date: Date.new(2020, 8,1), month: 8, description: "Rent", trans_type: "Expense", user_id: User.all.first.id)
Transaction.create(bank_account_id: BankAccount.all.first.id, category_id: Category.all[1].id, category_name: Category.all[1].name, amount: -189.30, date: Date.new(2020, 8,1), month: 8, description: "Con Ed Aug Bill", trans_type: "Expense", user_id: User.all.first.id)
Transaction.create(bank_account_id: BankAccount.all.first.id, category_id: Category.all[1].id, category_name: Category.all[1].name, amount: -80, date: Date.new(2020, 8,2), month: 8, description: "Internet", trans_type: "Expense", user_id: User.all.first.id)
Transaction.create(bank_account_id: BankAccount.all.first.id, category_id: Category.all[2].id, category_name: Category.all[2].name, amount: -62.52, date: Date.new(2020, 8,8), month: 8, description: "Trader Joe's", trans_type: "Expense", user_id: User.all.first.id)
Transaction.create(bank_account_id: BankAccount.all.first.id, category_id: Category.all[2].id, category_name: Category.all[2].name, amount: -23, date: Date.new(2020, 8,4), month: 8, description: "Whole Foods", trans_type: "Expense", user_id: User.all.first.id)
Transaction.create(bank_account_id: BankAccount.all.first.id, category_id: Category.all[3].id, category_name: Category.all[3].name, amount: -50.83, date: Date.new(2020, 8,16), month: 8, description: "Thai Food", trans_type: "Expense", user_id: User.all.first.id)
Transaction.create(bank_account_id: BankAccount.all.first.id, category_id: Category.all[3].id, category_name: Category.all[3].name, amount: -32.32, date: Date.new(2020, 8,4), month: 8, description: "Pizza", trans_type: "Expense", user_id: User.all.first.id)
Transaction.create(bank_account_id: BankAccount.all.first.id, category_id: Category.all[3].id, category_name: Category.all[3].name, amount: -42.32, date: Date.new(2020, 8,23), month: 8, description: "Seamless", trans_type: "Expense", user_id: User.all.first.id)
Transaction.create(bank_account_id: BankAccount.all.first.id, category_id: Category.all[3].id, category_name: Category.all[3].name, amount: -32.37, date: Date.new(2020, 8,2), month: 8, description: "Pizza", trans_type: "Expense", user_id: User.all.first.id)
Transaction.create(bank_account_id: BankAccount.all.first.id, category_id: Category.all[4].id, category_name: Category.all[4].name, amount: -40.52, date: Date.new(2020, 8,7), month: 8, description: "CVS", trans_type: "Expense", user_id: User.all.first.id)
Transaction.create(bank_account_id: BankAccount.all.first.id, category_id: Category.all[4].id, category_name: Category.all[4].name, amount: -80.23, date: Date.new(2020, 8,19), month: 8, description: "New Jacket", trans_type: "Expense", user_id: User.all.first.id)
Transaction.create(bank_account_id: BankAccount.all.first.id, category_id: Category.all[5].id, category_name: Category.all[5].name, amount: -60.21, date: Date.new(2020, 8,20), month: 8, description: "Misc supplies from Amazon", trans_type: "Expense", user_id: User.all.first.id)
Transaction.create(bank_account_id: BankAccount.all.first.id, category_id: Category.all[5].id, category_name: Category.all[5].name, amount: -40.21, date: Date.new(2020, 8,21), month: 8, description: "Lamp", trans_type: "Expense", user_id: User.all.first.id)
Transaction.create(bank_account_id: BankAccount.all.first.id, category_id: Category.all[6].id, category_name: Category.all[6].name, amount: -30, date: Date.new(2020, 8,30), month: 8, description: "Monthly Online Yoga Membership", trans_type: "Expense", user_id: User.all.first.id)
Transaction.create(bank_account_id: BankAccount.all.first.id, category_id: Category.all[7].id, category_name: Category.all[7].name, amount: -20, date: Date.new(2020, 8,30), month: 8, description: "Uber", trans_type: "Expense", user_id: User.all.first.id)
Transaction.create(bank_account_id: BankAccount.all.first.id, category_id: Category.all[6].id, category_name: Category.all[6].name, amount: -132.1, date: Date.new(2020, 8,30), month: 8, description: "River Deli", trans_type: "Expense", user_id: User.all.first.id)
Transaction.create(bank_account_id: BankAccount.all.first.id, category_id: Category.all[12].id, category_name: Category.all[12].name, amount: -11.99, date: Date.new(2020, 8,30), month: 8, description: "Hulu", trans_type: "Expense", user_id: User.all.first.id)
Transaction.create(bank_account_id: BankAccount.all.first.id, category_id: Category.all[12].id, category_name: Category.all[12].name, amount: -14.99, date: Date.new(2020, 8,30), month: 8, description: "HBO", trans_type: "Expense", user_id: User.all.first.id)
Transaction.create(bank_account_id: BankAccount.all.first.id, category_id: Category.all[12].id, category_name: Category.all[12].name, amount: -12.99, date: Date.new(2020, 8,30), month: 8, description: "Netflix", trans_type: "Expense", user_id: User.all.first.id)
Transaction.create(bank_account_id: BankAccount.all.first.id, category_id: Category.all[10].id, category_name: Category.all[10].name, amount: 1500, date: Date.new(2020, 8,15), month: 8, description: "Paycheck", trans_type: "Income", user_id: User.all.first.id)
Transaction.create(bank_account_id: BankAccount.all.first.id, category_id: Category.all[10].id, category_name: Category.all[10].name, amount: 1500, date: Date.new(2020, 8,30), month: 8, description: "Paycheck", trans_type: "Income", user_id: User.all.first.id)


Transaction.create(bank_account_id: BankAccount.all.first.id, category_id: Category.all[0].id, category_name: Category.all[0].name, amount: -900, date: Date.new(2020,9,1), month: 9, description: "Rent", trans_type: "Expense", user_id: User.all.first.id)
Transaction.create(bank_account_id: BankAccount.all.first.id, category_id: Category.all[1].id, category_name: Category.all[1].name, amount: -100, date: Date.new(2020,9,1), month: 9, description: "Con Ed Sept Bill", trans_type: "Expense", user_id: User.all.first.id)
Transaction.create(bank_account_id: BankAccount.all.first.id, category_id: Category.all[1].id, category_name: Category.all[1].name, amount: -80, date: Date.new(2020,9,2), month: 9, description: "Internet", trans_type: "Expense", user_id: User.all.first.id)
Transaction.create(bank_account_id: BankAccount.all.first.id, category_id: Category.all[2].id, category_name: Category.all[2].name, amount: -60.55, date: Date.new(2020,9,8), month: 9, description: "Trader Joe's", trans_type: "Expense", user_id: User.all.first.id)
Transaction.create(bank_account_id: BankAccount.all.first.id, category_id: Category.all[2].id, category_name: Category.all[2].name, amount: -75, date: Date.new(2020,9,4), month: 9, description: "Key Food", trans_type: "Expense", user_id: User.all.first.id)
Transaction.create(bank_account_id: BankAccount.all.first.id, category_id: Category.all[3].id, category_name: Category.all[3].name, amount: -50.83, date: Date.new(2020,9,16), month: 9, description: "Thai Food", trans_type: "Expense", user_id: User.all.first.id)
Transaction.create(bank_account_id: BankAccount.all.first.id, category_id: Category.all[3].id, category_name: Category.all[3].name, amount: -32.32, date: Date.new(2020,9,4), month: 9, description: "Pizza", trans_type: "Expense", user_id: User.all.first.id)
Transaction.create(bank_account_id: BankAccount.all.first.id, category_id: Category.all[3].id, category_name: Category.all[3].name, amount: -32.32, date: Date.new(2020,9,23), month: 9, description: "Seamless", trans_type: "Expense", user_id: User.all.first.id)
Transaction.create(bank_account_id: BankAccount.all.first.id, category_id: Category.all[3].id, category_name: Category.all[3].name, amount: -32.32, date: Date.new(2020,9,2), month: 9, description: "Pizza", trans_type: "Expense", user_id: User.all.first.id)
Transaction.create(bank_account_id: BankAccount.all.first.id, category_id: Category.all[4].id, category_name: Category.all[4].name, amount: -40.52, date: Date.new(2020,9,7), month: 9, description: "Gift for Niece", trans_type: "Expense", user_id: User.all.first.id)
Transaction.create(bank_account_id: BankAccount.all.first.id, category_id: Category.all[4].id, category_name: Category.all[4].name, amount: -80.23, date: Date.new(2020,9,19), month: 9, description: "New Jacket", trans_type: "Expense", user_id: User.all.first.id)
Transaction.create(bank_account_id: BankAccount.all.first.id, category_id: Category.all[5].id, category_name: Category.all[5].name, amount: -60.21, date: Date.new(2020,9,20), month: 9, description: "Misc supplies from Amazon", trans_type: "Expense", user_id: User.all.first.id)
Transaction.create(bank_account_id: BankAccount.all.first.id, category_id: Category.all[5].id, category_name: Category.all[5].name, amount: -40.21, date: Date.new(2020,9,21), month: 9, description: "Lamp", trans_type: "Expense", user_id: User.all.first.id)
Transaction.create(bank_account_id: BankAccount.all.first.id, category_id: Category.all[6].id, category_name: Category.all[6].name, amount: -30, date: Date.new(2020,9,30), month: 9, description: "Monthly Online Yoga Membership", trans_type: "Expense", user_id: User.all.first.id)
Transaction.create(bank_account_id: BankAccount.all.first.id, category_id: Category.all[7].id, category_name: Category.all[7].name, amount: -20, date: Date.new(2020,9,30), month: 9, description: "Uber", trans_type: "Expense", user_id: User.all.first.id)
Transaction.create(bank_account_id: BankAccount.all.first.id, category_id: Category.all[9].id, category_name: Category.all[9].name, amount: -50, date: Date.new(2020,9,30), month: 9, description: "ACLU", trans_type: "Expense", user_id: User.all.first.id)
Transaction.create(bank_account_id: BankAccount.all.first.id, category_id: Category.all[6].id, category_name: Category.all[6].name, amount: -100, date: Date.new(2020,9,30), month: 9, description: "Heights Cafe", trans_type: "Expense", user_id: User.all.first.id)
Transaction.create(bank_account_id: BankAccount.all.first.id, category_id: Category.all[12].id, category_name: Category.all[12].name, amount: -11.99, date: Date.new(2020,9,30), month: 9, description: "Hulu", trans_type: "Expense", user_id: User.all.first.id)
Transaction.create(bank_account_id: BankAccount.all.first.id, category_id: Category.all[12].id, category_name: Category.all[12].name, amount: -14.99, date: Date.new(2020,9,30), month: 9, description: "HBO", trans_type: "Expense", user_id: User.all.first.id)
Transaction.create(bank_account_id: BankAccount.all.first.id, category_id: Category.all[12].id, category_name: Category.all[12].name, amount: -12.99, date: Date.new(2020,9,30), month: 9, description: "Netflix", trans_type: "Expense", user_id: User.all.first.id)
Transaction.create(bank_account_id: BankAccount.all.first.id, category_id: Category.all[10].id, category_name: Category.all[10].name, amount: 1500, date: Date.new(2020,9,15), month: 9, description: "Paycheck", trans_type: "Income", user_id: User.all.first.id)
Transaction.create(bank_account_id: BankAccount.all.first.id, category_id: Category.all[10].id, category_name: Category.all[10].name, amount: 1500, date: Date.new(2020,9,30), month: 9, description: "Paycheck", trans_type: "Income", user_id: User.all.first.id)



Transaction.create(bank_account_id: BankAccount.all.first.id, category_id: Category.all[0].id, category_name: Category.all[0].name, amount: -900, date: Date.new(2020, 10,1), month: 10, description: "Rent", trans_type: "Expense", user_id: User.all.first.id)
Transaction.create(bank_account_id: BankAccount.all.first.id, category_id: Category.all[1].id, category_name: Category.all[1].name, amount: -80, date: Date.new(2020, 10,1), month: 10, description: "Con Ed Sept Bill", trans_type: "Expense", user_id: User.all.first.id)
Transaction.create(bank_account_id: BankAccount.all.first.id, category_id: Category.all[1].id, category_name: Category.all[1].name, amount: -80, date: Date.new(2020, 10,2), month: 10, description: "Internet", trans_type: "Expense", user_id: User.all.first.id)
Transaction.create(bank_account_id: BankAccount.all.first.id, category_id: Category.all[2].id, category_name: Category.all[2].name, amount: -26.55, date: Date.new(2020, 10,2), month: 10, description: "Trader Joe's", trans_type: "Expense", user_id: User.all.first.id)
Transaction.create(bank_account_id: BankAccount.all.first.id, category_id: Category.all[10].id, category_name: Category.all[10].name, amount: 1500, date: Date.new(2020, 10,15), month: 10, description: "Paycheck", trans_type: "Income", user_id: User.all.first.id)

# only works for sept?
Transaction.create(bank_account_id: BankAccount.all.second.id, category_id: Category.all[0].id, category_name: Category.all[0].name, amount: -1200, date: Date.new(2020,9,30), month: 9, description: "Rent", trans_type: "Expense", user_id: User.all.second.id)
# Transaction.create(bank_account_id: BankAccount.all.second.id, category_id: Category.all[0].id, category_name: Category.all[0].name, amount: -1000, date: Date.new(2020,10,31), month: 10, description: "Rent", trans_type: "Expense", user_id: User.all.second.id)
# Transaction.create(bank_account_id: BankAccount.all.second.id, category_id: Category.all[2].id, category_name: Category.all[2].name, amount: -40, date: Date.new(2020,10,31), month: 10, description: "Key Food", trans_type: "Expense", user_id: User.all.second.id)
Transaction.create(bank_account_id: BankAccount.all.second.id, category_id: Category.all[2].id, category_name: Category.all[2].name, amount: -52.21, date: Date.new(2020,9,30), month: 9, description: "Trader Joe's", trans_type: "Expense", user_id: User.all.second.id)