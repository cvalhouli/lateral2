class AddFieldsToProperties < ActiveRecord::Migration
  def change
    add_column :properties, :Annual_Real_Estate_Taxes, :string
    add_column :properties, :Exposures, :string
    add_column :properties, :Year_Built, :string
    add_column :properties, :Zoning, :string
    add_column :properties, :Floor, :string
    add_column :properties, :Asking_Price, :string
    add_column :properties, :Parking_Spaces, :string
  end
end
