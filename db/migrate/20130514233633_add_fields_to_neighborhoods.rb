class AddFieldsToNeighborhoods < ActiveRecord::Migration
  def change
    add_column :neighborhoods, :boundaries, :string
    add_column :neighborhoods, :history, :string
    add_column :neighborhoods, :notable_resident, :string
    add_column :neighborhoods, :of_note, :string
  end
end
