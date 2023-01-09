class AddImpressionsCountToResorts < ActiveRecord::Migration[6.1]
  def change
    add_column :resorts, :impressions_count, :integer, default: 0
  end
end
