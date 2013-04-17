class AddHoaToPropertyFields < ActiveRecord::Migration
  def change
    add_column :property_fields, :hoa, :float
  end
end
