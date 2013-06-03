class AddPricePerDayToPropertyFields < ActiveRecord::Migration
  def change
    add_column :property_fields, :price_per_day, :string
  end
end
