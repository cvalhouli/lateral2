class AddPhotoCaptionToNeighborhoods < ActiveRecord::Migration
  def change
    add_column :neighborhoods, :photo_text, :string
  end
end
