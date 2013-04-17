class AddRetaxToPropertyFields < ActiveRecord::Migration
  def change
    add_column :property_fields, :Annual_real_estate_tax, :float
  end
end
