class AddRentalTermsToPropertyFields < ActiveRecord::Migration
  def change
    add_column :property_fields, :first_month, :string
    add_column :property_fields, :last_month, :string
    add_column :property_fields, :security_deposit, :string
  end
end
