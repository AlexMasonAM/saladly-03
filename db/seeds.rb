# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

Ingredient.create([
  { name: 'lettuce', quantity: 50.0, units: 'cups', price_per_unit: 0.20 },
  { name: 'tomato', quantity: 10.0, units: 'tomatoes', price_per_unit: 1.10 },
  { name: 'bacon bits', quantity: 22.5, units: 'cups', price_per_unit: 2.25 },
  { name: 'blue cheese dressing', quantity: 10.0, units: 'cups', price_per_unit: 2.43 },
  { name: 'cucumber', quantity: 10.0, units: 'cucumbers', price_per_unit: 0.65 }
])

Employee.create([
  { name: 'Dylan Nau', hourly_wage: 10.10, address: '234 Orlando Avenue, West Hollywood, CA'},
  { name: 'Marlena Moore', hourly_wage: 13.90, address: '86 Privet Drive, Marin, CA'}
])

User.create(first_name: 'Greg', last_name: 'Buckner', password: 'password', password_confirmation: 'password', email: 'greg@buckner.co')