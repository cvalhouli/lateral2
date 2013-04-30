class AddExposuresToPropertyFields < ActiveRecord::Migration
  def change
    add_column :property_fields, :north, :string
    add_column :property_fields, :south, :string
    add_column :property_fields, :east, :string
    add_column :property_fields, :west, :string
  end
end
