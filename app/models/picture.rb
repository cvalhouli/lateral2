class Picture < ActiveRecord::Base
    belongs_to :property
    attr_accessible :property_id, :photo
    has_attached_file :photo, :styles => { :medium => "300x300>", :thumb => "100x100#" }, :default_url => "/images/:style/missing.png"
    
end
