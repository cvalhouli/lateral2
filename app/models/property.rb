class Property < ActiveRecord::Base
    attr_accessible :entry_type, :photo, :address1, :address2, :city, :sqft, :marketvalue, :mortgageAPR, :mortgageamount, :mortgagetype, :property_type, :state, :zipcode, :description,   :latitude, :longitude, :Annual_Real_Estate_Taxes, :Exposures, :Year_Built, :Zoning, :Floor, :Asking_Price, :Parking_Spaces, :salvage_type, :celltower_type,     :total_rooms, :hoa, :neighborhood, :nearby_transit, :flood_zone, :transit_distance, :nearest_synagogue, :synagogue_dustance,
    :bedrooms,
    :full_bath,
    :half_bath,
    :quarter_bath,
    :outdoor_space,
    :elevator,
    :smoking,
    :pets, :user_id,
    :maintenance_fee
  has_many :pictures
  has_many :property_fields
    

  has_attached_file :photo, :styles => { :medium => "300x300>", :thumb => "100x100#" }, :default_url => "/images/:style/missing.png"
    
    geocoded_by :full_address
    after_validation :geocode
    acts_as_votable

    acts_as_gmappable
    
    def full_address
       if self.address1 and self.city and self.state + self.zipcode
         return self.address1 + self.city + self.state + self.zipcode
       end
    end
    
    
    def state_abbreviation
        
        
        @states=[ ["AK", "Alaska"],
        ["AL", "Alabama"],
        ["AR", "Arkansas"],
        ["AS", "American Samoa"],
        ["AZ", "Arizona"],
        ["CA", "California"],
        ["CO", "Colorado"],
        ["CT", "Connecticut"],
        ["DC", "District of Columbia"],
        ["DE", "Delaware"],
        ["FL", "Florida"],
        ["GA", "Georgia"],
        ["GU", "Guam"],
        ["HI", "Hawaii"],
        ["IA", "Iowa"],
        ["ID", "Idaho"],
        ["IL", "Illinois"],
        ["IN", "Indiana"],
        ["KS", "Kansas"],
        ["KY", "Kentucky"],
        ["LA", "Louisiana"],
        ["MA", "Massachusetts"],
        ["MD", "Maryland"],
        ["ME", "Maine"],
        ["MI", "Michigan"],
        ["MN", "Minnesota"],
        ["MO", "Missouri"],
        ["MS", "Mississippi"],
        ["MT", "Montana"],
        ["NC", "North Carolina"],
        ["ND", "North Dakota"],
        ["NE", "Nebraska"],
        ["NH", "New Hampshire"],
        ["NJ", "New Jersey"],
        ["NM", "New Mexico"],
        ["NV", "Nevada"],
        ["NY", "New York"],
        ["OH", "Ohio"],
        ["OK", "Oklahoma"],
        ["OR", "Oregon"],
        ["PA", "Pennsylvania"],
        ["PR", "Puerto Rico"],
        ["RI", "Rhode Island"],
        ["SC", "South Carolina"],
        ["SD", "South Dakota"],
        ["TN", "Tennessee"],
        ["TX", "Texas"],
        ["UT", "Utah"],
        ["VA", "Virginia"],
        ["VI", "Virgin Islands"],
        ["VT", "Vermont"],
        ["WA", "Washington"],
        ["WI", "Wisconsin"],
        ["WV", "West Virginia"],
        ["WY", "Wyoming"] ]
        
        for state in @states
            
              if self.state==state.last
                  return state.first
                  
              end
            
        end
            
                
    end
    
    def cost_to_i
        self.delete('$,').to_i
    end
    def gmaps4rails_address
        #describe how to retrieve the address from your model, if you use directly a db column, you can dry your code, see wiki
        "#{self.address1} #{self.address2} , #{self.city}, #{self.state}  #{self.zipcode}"
    end
end
