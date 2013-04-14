class AddSomFieldsToPropertyFields < ActiveRecord::Migration
  def change
    add_column :property_fields, :available, :string
    add_column :property_fields, :subdividable, :string
    add_column :property_fields, :gross_income, :string
    add_column :property_fields, :GRM, :string
  end
end
