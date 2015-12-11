# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)


25.times do 
	user = User.create!(
		name: Faker::Name.name,
		email: Faker::Internet.email,
		password: "helloworld"
		)
end

	users = User.all

	50.times do 
		item = Item.create!(
			name: Faker::Hacker.say_something_smart,
			user: users.sample
			)
	end
	items = Item.all

	puts "#{items.count} Items created!"
	puts "#{users.count} Users created"