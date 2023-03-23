require 'geocoder'

Admin.create(email: '0@0', password: '123450')

Prefecture.create([{name: "北海道"}, {name: "青森県"}, {name: "秋田県"}, {name: "宮城県"}, {name: "福島県"},
                  {name: "新潟県"}, {name: "長野県"}, {name: "岐阜県"}, {name: "福井県"}, {name: "滋賀県"}])

10.times do |n|
  Member.create(email: "test#{n+1}@test#{n+1}", password: "12345#{n+1}", nick_name: "#{n+1}太郎")
end

geocoder_result1 = Geocoder.search("北海道富良野市中御料").first
geocoder_result2 = Geocoder.search("北海道虻田郡留寿都村字泉川13").first
geocoder_result1 = Geocoder.search("宮城県刈田郡蔵王町遠刈田温泉倉石岳国有林内").first


Resort.create!(prefecture_id: 1,
              name: "富良野スキー場",
              postal_code: "076-8511",
              address: "北海道富良野市中御料",
              feature: "24 のゲレンデを備えた親子連れ向けのリゾート。",
              latitude: geocoder_result1.latitude,
              longitude: geocoder_result1.longitude
              )

Resort.create!(prefecture_id: 1,
              name: "ルスツリゾート",
              postal_code: "048-1711",
              address: "北海道虻田郡留寿都村字泉川13",
              feature: "北海道のスキー場の中でも最大規模のスキー場",
              latitude: geocoder_result2.latitude,
              longitude: geocoder_result2.longitude
              )

Resort.create!(prefecture_id: 4,
              name: "みやぎ蔵王えぼしスキー場",
              postal_code: "989-0916",
              address: "宮城県刈田郡蔵王町遠刈田温泉倉石岳国有林内",
              feature: "レベルを問わず楽しめるコース構成となっています。",
              impressions_count: "0",
              latitude: "38.12732219970969",
              longitude: "140.52842530101768"
              )


3.times do |n|
  Review.create(member_id: "1",
                resort_id: "1",
                title: "テスト#{n+1}",
                body: "000000#{n+1}",
                the_day: "2022-12-1#{n}",
                rate: "3.5")
end

3.times do |n|
  Review.create(member_id: "2",
                resort_id: "1",
                title: "テスト#{n+4}",
                body: "000000#{n+4}",
                the_day: "2022-12-1#{n+3}",
                rate: "5")
end

3.times do |n|
  Review.create(member_id: "3",
                resort_id: "2",
                title: "テスト#{n+1}",
                body: "000000#{n+1}",
                the_day: "2022-12-1#{n}",
                rate: "3.5")
end

3.times do |n|
  Review.create(member_id: "4",
                resort_id: "2",
                title: "テスト#{n+4}",
                body: "000000#{n+4}",
                the_day: "2022-12-1#{n+3}",
                rate: "5")
end