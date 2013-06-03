class AddAdditionFieldsToNeighborhoods < ActiveRecord::Migration
  def change
    add_column :neighborhoods, :area, :string
    add_column :neighborhoods, :population, :string
    add_column :neighborhoods, :population_density, :string
    add_column :neighborhoods, :average_income, :string
    add_column :neighborhoods, :percent_college, :string
    add_column :neighborhoods, :percent_graduate_degree, :string
    add_column :neighborhoods, :average_age_mother, :string
    add_column :neighborhoods, :residential_vacancy_rate, :string
    add_column :neighborhoods, :community_board, :string
    add_column :neighborhoods, :nypd_precinct, :string
    add_column :neighborhoods, :sperling_air, :string
    add_column :neighborhoods, :sperling_water, :string
  end
end
