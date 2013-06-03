class Neighborhood < ActiveRecord::Base
    attr_accessible :photo, :name, :zip_code, :city, :boundaries, :history, :notable_resident, :of_note, :housing_stock, :wikipedia_link, :area, :population, :population_density, :average_income, :percent_college, :percent_graduate_degree, :average_age_mother, :residential_vacancy_rate, :community_board, :nypd_precinct, :sperling_air, :sperling_water
    
    has_attached_file :photo, :styles => { :large=>"600x600>", :medium => "300x300>", :thumb => "100x100#" }, :default_url => "/images/:style/missing.png"
end
