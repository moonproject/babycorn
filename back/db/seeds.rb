# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end

# Users
john = User.create(firstname: 'John', lastname: 'Doe', email: 'john.doe@company.co')
jane = User.create(firstname: 'Jane', lastname: 'Doe', email: 'jane.doe@company.co')
ruby = User.create(firstname: 'Ruby', lastname: 'Codeberg', email: 'ruby.codeberg@company.co')
js = User.create(firstname: 'Java', lastname: 'Scripterson', email: 'java.scripterson@company.co')
dixon = User.create(firstname: 'Dixon', lastname: 'Debug', email: 'dixon.debug@company.co')
cee = User.create(firstname: 'Cee', lastname: 'Sharp', email: 'cee.sharp@company.co')

# Expenses
Expense.create(title: 'MacBook Pro 16” 512 Go', amount: 2999, user: john)
Expense.create(title: 'MacBook Pro 16” 1 To', amount: 3499, user: jane)
Expense.create(title: 'MacBook Pro 16” 512 Go', amount: 2999, user: ruby)
Expense.create(title: 'MacBook Pro 16” 512 Go', amount: 2999, user: js)
Expense.create(title: 'MacBook Pro 16” 512 Go', amount: 2999, user: dixon)
Expense.create(title: 'MacBook Pro 16” 16 To', amount: 5499, user: cee)

Expense.create(title: 'Bose QuietComfort 35 II', amount: 379, user: john)
Expense.create(title: 'Bose QuietComfort 35 II', amount: 379, user: jane)
Expense.create(title: 'Bose QuietComfort 35 II', amount: 379, user: ruby)
Expense.create(title: 'Bose QuietComfort 35 II', amount: 379, user: js)
Expense.create(title: 'Bose QuietComfort 35 II', amount: 379, user: dixon)
Expense.create(title: 'Bose QuietComfort 35 II', amount: 379, user: cee)

Expense.create(title: 'iPhone 12 Pro Max 512 Go', amount: 1659, user: john)
Expense.create(title: 'iPhone 12 Pro Max 512 Go', amount: 1659, user: jane)

Expense.create(title: 'iPad Pro 12,9” 512 Go', amount: 1499, user: dixon)

Expense.create(title: 'Apple Watch Series 6', amount: 529, user: ruby)
Expense.create(title: 'Apple Watch Series 6', amount: 529, user: js)

Expense.create(title: 'AirPods Pro', amount: 279, user: john)
Expense.create(title: 'AirPods Pro', amount: 279, user: jane)
Expense.create(title: 'AirPods Pro', amount: 279, user: ruby)
