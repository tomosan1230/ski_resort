class AddDetailsToResorts < ActiveRecord::Migration[6.1]
  def change
    add_column :resorts, :latitude, :float
    add_column :resorts, :longitude, :float
  end
end
