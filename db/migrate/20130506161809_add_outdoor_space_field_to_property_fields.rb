class AddOutdoorSpaceFieldToPropertyFields < ActiveRecord::Migration
  def change
    add_column :property_fields, :private_balcony, :string
    add_column :property_fields, :private_roof_deck, :string
    add_column :property_fields, :common_roof_deck, :string
    add_column :property_fields, :common_garden, :string
    add_column :property_fields, :indoor_swimming_pool, :string
    add_column :property_fields, :outdoor_swimming_pool, :string
    add_column :property_fields, :other_outdoor_space, :string
  end
end
