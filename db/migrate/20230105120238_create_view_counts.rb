class CreateViewCounts < ActiveRecord::Migration[6.1]
  def change
    create_table :view_counts do |t|
      t.integer, :resort_id
      t.integer :member_id

      t.timestamps
    end
  end
end
