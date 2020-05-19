
User.create!(name: "testuser",
            email: "test@example.com",
            detail: "テストユーザーです",
            password: "admin",
            password_confirmation: "admin",
            admin: true)


20.times do |n|
  name = Faker::Pokemon.name
  email = "example-#{n+1}@nomady.com"
  password = "admin"
  detail = "#{n+1}番目に捕まえられたポケモンです"
  User.create!(name:  name,
              email:  email,
              detail: detail,
              password:               password,
              password_confirmation:  password
        )
end

users = User.order(:created_at).take(10)
2.times do
  title = "スターバックス"
  content = Faker::Lorem.sentence(5)
  postcode =  Faker::Address.postcode
  address_all = Faker::Address.state + Faker::Address.city
  tag_list = "席いっぱい,コーヒー美味しい"
  wifi = "1"
  power = "1"
  users.each { |user| user.cafeposts.create!(title: title, content: content, wifi: wifi, power: power, postcode: postcode, address_all: address_all, tag_list: tag_list ) }
end