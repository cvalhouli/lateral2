class AddFloodZoneToPropertyFields < ActiveRecord::Migration
  def change
    add_column :property_fields, :flood_zone, :string
  end
end
