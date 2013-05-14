class AddFireplaceToPropertyFields < ActiveRecord::Migration
  def change
    add_column :property_fields, :fireplace, :string
  end
end
