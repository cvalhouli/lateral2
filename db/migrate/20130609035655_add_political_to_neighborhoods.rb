class AddPoliticalToNeighborhoods < ActiveRecord::Migration
  def change
    add_column :neighborhoods, :political_affiliation, :string
  end
end
