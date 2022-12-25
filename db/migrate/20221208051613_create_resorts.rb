class CreateResorts < ActiveRecord::Migration[6.1]
  def change
    create_table :resorts do |t|
      t.integer "member_id"
      t.integer "prefecture"
      t.string "name", null: false
      t.string "postal_code", null: false
      t.string "address", null: false
      t.text "feature", null: false
      t.timestamps
    end
  end
end
