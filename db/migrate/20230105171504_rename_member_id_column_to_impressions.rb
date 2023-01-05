class RenameMemberIdColumnToImpressions < ActiveRecord::Migration[6.1]
  def change
    rename_column :impressions, :member_id, :user_id
  end
end
