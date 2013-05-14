class AddHoaToProperties < ActiveRecord::Migration
  def change
    add_column :properties, :hoa, :float
  end
end
