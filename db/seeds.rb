Member.create!(	name: 	"Example Member",
				email: 	"example@wegscheidwebservices.com",
				password: 				"foobar",
				password_confirmation: 	"foobar")

99.times do |n|
	name = Faker::Name.name
	email = "example-#{n+1}@wegscheidwebservices.com"
	password = "password"
	Member.create!(	name: 	name,
					email: 	email,
					password: 				password,
					password_confirmation: 	password)
end