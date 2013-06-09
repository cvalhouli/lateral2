class AddAverageCondoToNeighborhoods < ActiveRecord::Migration
    def change
        add_column :neighborhoods, :studio_low_rent_condo, :string
        add_column :neighborhoods, :studio_high_rent_condo_string, :string
        add_column :neighborhoods, :studio_median_rent_condo, :string
        add_column :neighborhoods, :one_bedroom_low_rent_condo, :string
        add_column :neighborhoods, :one_bedroom_high_rent_condo, :string
        add_column :neighborhoods, :one_bedroom_median_rent_condo, :string
        add_column :neighborhoods, :two_bedroom_low_rent_condo, :string
        add_column :neighborhoods, :two_bedroom_high_rent_condo, :string
        add_column :neighborhoods, :two_bedroom_median_rent_condo, :string
        add_column :neighborhoods, :three_bedroom_low_rent_condo, :string
        add_column :neighborhoods, :three_bedroom_high_rent_condo, :string
        add_column :neighborhoods, :three_bedroom_median_rent_condo, :string
        add_column :neighborhoods, :studio_low_condo, :string
        add_column :neighborhoods, :studio_high_condo_string, :string
        add_column :neighborhoods, :studio_median_condo, :string
        add_column :neighborhoods, :one_bedroom_low_condo, :string
        add_column :neighborhoods, :one_bedroom_high_condo, :string
        add_column :neighborhoods, :one_bedroom_median_condo, :string
        add_column :neighborhoods, :two_bedroom_low_condo, :string
        add_column :neighborhoods, :two_bedroom_high_condo, :string
        add_column :neighborhoods, :two_bedroom_median_condo, :string
        add_column :neighborhoods, :three_bedroom_low_condo, :string
        add_column :neighborhoods, :three_bedroom_high_condo, :string
        add_column :neighborhoods, :three_bedroom_median_condo, :string
    end
end
