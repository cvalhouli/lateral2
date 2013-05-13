class AddTotalLivingLevelsToPropertyFields < ActiveRecord::Migration
  def change
    add_column :property_fields, :total_living_levels, :string
    add_column :property_fields, :building_name, :string
  end
end
