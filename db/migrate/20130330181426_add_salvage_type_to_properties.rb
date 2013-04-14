class AddSalvageTypeToProperties < ActiveRecord::Migration
  def change
    add_column :properties, :salvage_type, :string
  end
end
