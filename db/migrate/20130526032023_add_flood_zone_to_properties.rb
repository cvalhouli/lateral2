class AddFloodZoneToProperties < ActiveRecord::Migration
  def change
    add_column :properties, :flood_zone, :string
  end
end
