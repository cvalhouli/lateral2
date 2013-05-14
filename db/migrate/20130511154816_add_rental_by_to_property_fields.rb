class AddRentalByToPropertyFields < ActiveRecord::Migration
  def change
    add_column :property_fields, :rented_by, :string
  end
end
