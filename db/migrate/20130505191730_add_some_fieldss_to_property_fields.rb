class AddSomeFieldssToPropertyFields < ActiveRecord::Migration
  def change
    add_column :property_fields, :corner_unit, :string
    add_column :property_fields, :front_of_building, :string
    add_column :property_fields, :rear_of_building, :string
    add_column :property_fields, :street_level, :string
    add_column :property_fields, :basement, :string
    add_column :property_fields, :other_placement, :string
  end
end
