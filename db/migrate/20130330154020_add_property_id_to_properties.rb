class AddPropertyIdToProperties < ActiveRecord::Migration
  def change
    add_column :properties, :property_id, :integer
  end
end
