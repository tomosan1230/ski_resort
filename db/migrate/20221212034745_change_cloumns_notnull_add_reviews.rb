class ChangeCloumnsNotnullAddReviews < ActiveRecord::Migration[6.1]
  def change
    change_column :reviews, :star, :float, null:false
  end
end
