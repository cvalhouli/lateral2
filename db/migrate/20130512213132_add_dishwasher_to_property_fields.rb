class AddDishwasherToPropertyFields < ActiveRecord::Migration
  def change
    add_column :property_fields, :dishwasher, :string
    add_column :property_fields, :furnished, :string
    add_column :property_fields, :disabled_access, :string
  end
end
