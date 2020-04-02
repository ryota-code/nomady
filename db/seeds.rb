User.create!(name: "Example User",
            email: "example@nomady.com",
            password: "admin1234",
            password_confirmation: "admin1234")


50.times do |n|
  name = Faker::Name.name
  email = "example-#{n+1}@nomady.com"
  password = "admin1234"
  User.create!(name:  name,
              email:  email,
              password:               password,
              password_confirmation:  password
        )
end
