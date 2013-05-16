class AddTransitToProperties < ActiveRecord::Migration
  def change
    add_column :properties, :nearby_transit, :string
    add_column :properties, :local_schools, :string
    add_column :properties, :ownership_costs, :string
  end
end
