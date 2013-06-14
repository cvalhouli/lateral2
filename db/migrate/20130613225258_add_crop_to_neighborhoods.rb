class AddCropToNeighborhoods < ActiveRecord::Migration
  def change
    add_column :neighborhoods, :crop_x, :string
    add_column :neighborhoods, :crop_y, :string
    add_column :neighborhoods, :crop_w, :string
    add_column :neighborhoods, :crop_h, :string
  end
end
