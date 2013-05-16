class Neighborhood < ActiveRecord::Base
    attr_accessible :name, :zip_code, :city, :boundaries, :history, :notable_resident, :of_note
end
