class AddOutDoorToPropertyFields < ActiveRecord::Migration
  def change
    add_column :property_fields, :backyard, :string
    add_column :property_fields, :outdoor_none, :string
    add_column :property_fields, :top_floor, :string
    add_column :property_fields, :obstructed_views, :string
  end
end
