class RemoveMemberIdFromResorts < ActiveRecord::Migration[6.1]
  def change
    remove_column :resorts, :member_id, :integer
  end
end
