class AddWheelchairToPropertyFields < ActiveRecord::Migration
  def change
    add_column :property_fields, :wheelchair, :string
    add_column :property_fields, :entrance, :string
    add_column :property_fields, :doorways36, :string
    add_column :property_fields, :adjustable, :string
  end
end
