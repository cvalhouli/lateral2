class AddGmapsToProperties < ActiveRecord::Migration
  def change
    add_column :properties, :gmaps, :boolean
  end
end
