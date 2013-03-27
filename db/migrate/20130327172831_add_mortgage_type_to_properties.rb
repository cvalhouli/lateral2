class AddMortgageTypeToProperties < ActiveRecord::Migration
  def change
    add_column :properties, :mortgage_type, :string
  end
end
