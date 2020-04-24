
User.create!(name: "ミューツー",
            email: "example@nomady.com",
            detail: "技を受けた時、技のPPを2減らす。／レベルの高い野生のポケモンと出会いやすくなる。",
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

users = User.order(:created_at).take(6)
3.times do
  title = "スターバックス"
  content = Faker::Lorem.sentence(5)
  postcode =  Faker::Address.postcode
  address_all = Faker::Address.state + Faker::Address.city + Faker::Address.street_name + Faker::Address.street_address
  tag_list = "席いっぱい,コーヒー美味しい"
  wifi = "1"
  power = "1"
  users.each { |user| user.cafeposts.create!(title: title, content: content, wifi: wifi, power: power, postcode: postcode, address_all: address_all, tag_list: tag_list ) }
end


array = %w(aaa bbb ccc ddd eee fff ggg)
array.each{ |tag|
  tag_list = ActsAsTaggableOn::Tag.new
  tag_list.name = tag
  tag_list.save
}