class AddLaundryToPropertyFields < ActiveRecord::Migration
  def change
    add_column :property_fields, :laundry, :string
  end
end
