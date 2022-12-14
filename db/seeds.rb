# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Admin.create(email: '0@0', password: '123450')

10.times do |n|
  Prefecture.create(name: "#{n}県")
  Member.create(email: "#{n}@#{n}", password: "12345#{n}", nick_name: "#{n}太郎")
end

10.times do |n|
  Resort.create(prefecture_id: "#{n+1}",
                name: "テスト#{n+1}",
                postal_code: "000000#{n+1}",
                address: "#{n}市#{n}町",
                feature: "#{n+1}回目")
end

10.times do |n|
  Review.create(member_id: "#{n+1}",
                resort_id: "1",
                title: "テスト#{n+1}",
                body: "000000#{n+1}",
                the_day: "2022-12-1#{n}",
                rate: "4")
end