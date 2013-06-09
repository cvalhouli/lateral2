class AddYPositionToNeighborhoods < ActiveRecord::Migration
  def change
    add_column :neighborhoods, :y_position, :string
  end
end
