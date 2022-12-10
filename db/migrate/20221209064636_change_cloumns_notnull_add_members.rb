class ChangeCloumnsNotnullAddMembers < ActiveRecord::Migration[6.1]
  def change
    change_column :members, :nick_name, :string, null: false
  end
end
