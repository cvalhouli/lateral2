class AddHousingStockToNeighborhoods < ActiveRecord::Migration
  def change
    add_column :neighborhoods, :housing_stock, :string
  end
end
