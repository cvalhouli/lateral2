class Neighborhood < ActiveRecord::Base
    attr_accessible :photo, :name, :zip_code, :city, :boundaries, :history, :notable_resident, :of_note, :housing_stock, :wikipedia_link, :area, :population, :population_density, :average_income, :percent_college, :percent_graduate_degree, :average_age_mother, :residential_vacancy_rate, :community_board, :nypd_precinct, :sperling_air, :sperling_water,
    :studio_low, :studio_high_string, :studio_median, :one_bedroom_low, :one_bedroom_high, :one_bedroom_median, :two_bedroom_low, :two_bedroom_high, :two_bedroom_median,  :three_bedroom_low, :three_bedroom_high, :three_bedroom_median, :studio_low_rent, :studio_high_rent_string, :studio_median_rent, :one_bedroom_low_rent, :one_bedroom_high_rent, :one_bedroom_median_rent, :two_bedroom_low_rent, :two_bedroom_high_rent, :two_bedroom_median_rent,  :three_bedroom_low_rent, :three_bedroom_high_rent, :three_bedroom_median_rent
    
    has_attached_file :photo, :styles => { :large=>"600x600>", :medium => "300x300>", :thumb => "100x100#" }, :default_url => "/images/:style/missing.png"
end
