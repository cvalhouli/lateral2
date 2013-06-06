class AddAverageRentToNeighborhoods < ActiveRecord::Migration
  def change
    add_column :neighborhoods, :studio_low_rent, :string
    add_column :neighborhoods, :studio_high_rent_string, :string
    add_column :neighborhoods, :studio_median_rent, :string
    add_column :neighborhoods, :one_bedroom_low_rent, :string
    add_column :neighborhoods, :one_bedroom_high_rent, :string
    add_column :neighborhoods, :one_bedroom_median_rent, :string
    add_column :neighborhoods, :two_bedroom_low_rent, :string
    add_column :neighborhoods, :two_bedroom_high_rent, :string
    add_column :neighborhoods, :two_bedroom_median_rent, :string
    add_column :neighborhoods, :three_bedroom_low_rent, :string
    add_column :neighborhoods, :three_bedroom_high_rent, :string
    add_column :neighborhoods, :three_bedroom_median_rent, :string
  end
end
