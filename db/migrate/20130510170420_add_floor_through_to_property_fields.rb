class AddFloorThroughToPropertyFields < ActiveRecord::Migration
  def change
    add_column :property_fields, :floor_through, :string
  end
end
