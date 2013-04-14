class AddPropertyIdToPropertyFields < ActiveRecord::Migration
  def change
    add_column :property_fields, :property_id, :integer
  end
end
