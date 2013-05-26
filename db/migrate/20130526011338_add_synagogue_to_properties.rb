class AddSynagogueToProperties < ActiveRecord::Migration
  def change
    add_column :properties, :nearest_synagogue, :string
    add_column :properties, :synagogue_distance, :float
    add_column :properties, :transit_distance, :float
  end
end
