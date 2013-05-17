class AddWikiToNeighborhoods < ActiveRecord::Migration
  def change
    add_column :neighborhoods, :wikipedia_link, :string
  end
end
