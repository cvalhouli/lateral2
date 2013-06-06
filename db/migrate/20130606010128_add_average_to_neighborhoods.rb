class AddAverageToNeighborhoods < ActiveRecord::Migration
  def change
    add_column :neighborhoods, :studio_low, :string
    add_column :neighborhoods, :studio_high_string, :string
    add_column :neighborhoods, :studio_median, :string
    add_column :neighborhoods, :one_bedroom_low, :string
    add_column :neighborhoods, :one_bedroom_high, :string
    add_column :neighborhoods, :one_bedroom_median, :string
    add_column :neighborhoods, :two_bedroom_low, :string
    add_column :neighborhoods, :two_bedroom_high, :string
    add_column :neighborhoods, :two_bedroom_median, :string
    add_column :neighborhoods, :three_bedroom_low, :string
    add_column :neighborhoods, :three_bedroom_high, :string
    add_column :neighborhoods, :three_bedroom_median, :string
  end
end
