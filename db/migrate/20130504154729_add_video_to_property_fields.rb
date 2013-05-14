class AddVideoToPropertyFields < ActiveRecord::Migration
  def change
    add_column :property_fields, :video_link, :string
    add_column :property_fields, :proprerty_website, :string
    add_column :property_fields, :unit_floor, :string
  end
end
