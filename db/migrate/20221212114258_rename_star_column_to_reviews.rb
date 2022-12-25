class RenameStarColumnToReviews < ActiveRecord::Migration[6.1]
  def change
    rename_column :reviews, :star, :rate
  end
end
