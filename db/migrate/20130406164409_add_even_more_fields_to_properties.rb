class AddEvenMoreFieldsToProperties < ActiveRecord::Migration
  def change
    add_column :property_fields, :total_rooms, :string
    add_column   :property_fields, :bedrooms, :string
    add_column   :property_fields, :full_bath, :string
    add_column   :property_fields, :half_bath, :string
    add_column   :property_fields, :quarter_bath, :string
    add_column   :property_fields, :outdoor_space, :string
    add_column   :property_fields, :elevator, :string
    add_column   :property_fields, :maintenance_fee, :string
  end
end
