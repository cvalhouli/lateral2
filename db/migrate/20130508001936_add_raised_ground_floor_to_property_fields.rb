class AddRaisedGroundFloorToPropertyFields < ActiveRecord::Migration
  def change
    add_column :property_fields, :raised_ground_floor, :string
  end
end
