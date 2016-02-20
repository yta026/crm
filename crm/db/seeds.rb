# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

# 100.times do |index|
#   Customer.create(family_name: 'nashiro', given_name: 'daisuke', email: "n_#{index}@hoge.com")
# end

100.times do |index|
  Customer.create(family_name: "鈴木", given_name: "太郎", email: "customer_#{index}@sparta.com")
end