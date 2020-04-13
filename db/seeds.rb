
User.create!(name: "加藤 浩輔",
            email: "example@nomady.com",
            detail: "4年生/文学部/TOEIC800点/留学経験あり",
            password: "admin1234",
            password_confirmation: "admin1234",
            admin: true)


20.times do |n|
  name = Faker::Name.name
  email = "example-#{n+1}@nomady.com"
  password = "admin1234"
  detail = "4年生/文学部/TOEIC800点/留学経験あり"
  User.create!(name:  name,
              email:  email,
              detail: detail,
              password:               password,
              password_confirmation:  password
        )
end

users = User.order(:created_at).take(6)
5.times do
  title = Faker::Lorem.sentence(2)
  content = Faker::Lorem.sentence(5)
  wifi = "1"
  power = "1"
  users.each { |user| user.cafeposts.create!(title: title, content: content, wifi: wifi, power: power) }
end
