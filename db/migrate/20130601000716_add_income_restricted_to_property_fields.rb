class AddIncomeRestrictedToPropertyFields < ActiveRecord::Migration
  def change
    add_column :property_fields, :income_restriction, :string
  end
end
