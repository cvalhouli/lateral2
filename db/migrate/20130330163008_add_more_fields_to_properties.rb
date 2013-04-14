class AddMoreFieldsToProperties < ActiveRecord::Migration
  def change
      add_column :property_fields, :marketvalue, :string
      add_column :property_fields, :mortgageamount, :string
      add_column :property_fields, :mortgageAPR, :string
      add_column :property_fields, :mortgagetype, :string
  end
end
