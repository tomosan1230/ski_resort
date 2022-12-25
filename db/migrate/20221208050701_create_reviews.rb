class CreateReviews < ActiveRecord::Migration[6.1]
  def change
    create_table :reviews do |t|
      t.integer "member_id"
      t.integer "resort_id"
      t.string "title", null: false
      t.text "body", null: false
      t.date "the_day", null: false
      t.timestamps
    end
  end
end
