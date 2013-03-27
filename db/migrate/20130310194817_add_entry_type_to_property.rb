class AddEntryTypeToProperty < ActiveRecord::Migration
  def change
      add_column :properties, :entry_type, :string
  end
end
