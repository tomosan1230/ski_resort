class RenamePrefectureColumnToResorts < ActiveRecord::Migration[6.1]
  def change
    rename_column :resorts, :prefecture, :prefecture_id
  end
end
