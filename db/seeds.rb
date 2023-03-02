# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Admin.create(email: '0@0', password: '123450')

# Prefecture.create([{name: "北海道"}, {name: "青森県"}, {name: "秋田県"}, {name: "宮城県"}, {name: "福島県"},
#                   {name: "新潟県"}, {name: "長野県"}, {name: "岐阜県"}, {name: "福井県"}, {name: "滋賀県"}])

# 10.times do |n|
#   Member.create(email: "test#{n+1}@test#{n+1}", password: "12345#{n+1}", nick_name: "#{n+1}太郎")
# end

# 3.times do |n|
#   Resort.create(prefecture_id: "1",
#                 name: "北海道スキー場#{n+1}",
#                 postal_code: "000000#{n+1}",
#                 address: "札幌市札幌町#{n+1}番地",
#                 feature: "初心者向け")
# end

# 3.times do |n|
#   Resort.create(prefecture_id: "2",
#                 name: "青森スキー場#{n+1}",
#                 postal_code: "000000#{n+1}",
#                 address: "青森市青森町#{n+1}番地",
#                 feature: "中級者向け")
# end

# 3.times do |n|
#   Review.create(member_id: "1",
#                 resort_id: "1",
#                 title: "テスト#{n+1}",
#                 body: "000000#{n+1}",
#                 the_day: "2022-12-1#{n}",
#                 rate: "3.5")
# end

# 3.times do |n|
#   Review.create(member_id: "2",
#                 resort_id: "1",
#                 title: "テスト#{n+4}",
#                 body: "000000#{n+4}",
#                 the_day: "2022-12-1#{n+3}",
#                 rate: "5")
# end

# 3.times do |n|
#   Review.create(member_id: "3",
#                 resort_id: "2",
#                 title: "テスト#{n+1}",
#                 body: "000000#{n+1}",
#                 the_day: "2022-12-1#{n}",
#                 rate: "3.5")
# end

# 3.times do |n|
#   Review.create(member_id: "4",
#                 resort_id: "2",
#                 title: "テスト#{n+4}",
#                 body: "000000#{n+4}",
#                 the_day: "2022-12-1#{n+3}",
#                 rate: "5")
# end