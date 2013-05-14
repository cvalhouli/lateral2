class AddSomeMoreFieldsToPropertyFields < ActiveRecord::Migration
  def change
    add_column :property_fields, :start_date, :date
  end
end
