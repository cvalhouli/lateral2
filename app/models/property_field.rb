class PropertyField < ActiveRecord::Base
    
    belongs_to :property
    
    attr_accessible :property_id, :Cap_Rate, :City_Water, :Clear_Height, :Construction_Docs_Ready, :Efficiency_of_HydroEquipment, :Electrical_Service, :FAR, :Height_Of_Drop, :KWatt_Hours_Annually, :Load_Capacity, :Loading_Docks, :Roof, :Sewer, :Special_Permit, :Volume_Water, :Zoning_Permit, :exposure, :pets, :price_per_sqft, :smoking, :unit_placement, :when_available, :year_built, :zoning, :marketvalue, :mortgageAPR, :mortgageamount, :mortgagetype,  :total_rooms, :hoa, :Annual_real_estate_tax,
    :bedrooms,
    :full_bath,
    :half_bath,
    :quarter_bath,
    :outdoor_space,
    :elevator,
    :maintenance_fee, :available, :subdividable, :gross_income, :GRM
end
