class Property < ActiveRecord::Base
    attr_accessible :entry_type, :photo, :address1, :address2, :city, :sqft,         :marketvalue, :mortgageAPR, :mortgageamount, :mortgagetype, :property_type, :state, :zipcode, :description, :latitude, :longitude
  has_many :pictures
    
    
  has_attached_file :photo, :styles => { :medium => "300x300>", :thumb => "100x100#" }, :default_url => "/images/:style/missing.png"
    
    geocoded_by :full_address
    after_validation :geocode

    acts_as_gmappable
    
    def full_address
       if self.address1 and self.city and self.state + self.zipcode
         return self.address1 + self.city + self.state + self.zipcode
       end
    end
    
    
    def gmaps4rails_address
        #describe how to retrieve the address from your model, if you use directly a db column, you can dry your code, see wiki
        "#{self.address1} #{self.address2} , #{self.city}, #{self.state}  #{self.zipcode}"
    end
end