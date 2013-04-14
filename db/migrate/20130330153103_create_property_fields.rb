class CreatePropertyFields < ActiveRecord::Migration
  def change
    create_table :property_fields do |t|
      t.string :zoning
      t.string :year_built
      t.string :exposure
      t.string :pets
      t.string :unit_placement
      t.string :price_per_sqft
      t.string :when_available
      t.string :smoking
      t.string :Clear_Height
      t.string :Cap_Rate
      t.string :Roof
      t.string :Electrical_Service
      t.string :KWatt_Hours_Annually
      t.string :Volume_Water
      t.string :Height_Of_Drop
      t.string :Efficiency_of_HydroEquipment
      t.string :FAR
      t.string :Sewer
      t.string :Load_Capacity
      t.string :Loading_Docks
      t.string :Special_Permit
      t.string :Construction_Docs_Ready
      t.string :City_Water
      t.string :Zoning_Permit

      t.timestamps
    end
  end
end
