class AddCellTowerTypeToProperties < ActiveRecord::Migration
  def change
    add_column :properties, :celltower_type, :string
  end
end
