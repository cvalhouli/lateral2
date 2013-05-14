class AddSqFtToProperties < ActiveRecord::Migration
  def change
    add_column :properties, :sqft, :string
  end
end
