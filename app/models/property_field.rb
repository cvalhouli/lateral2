class PropertyField < ActiveRecord::Base
    
    belongs_to :property
    
    attr_accessible :property_id, :Cap_Rate, :City_Water, :Clear_Height, :Construction_Docs_Ready, :Efficiency_of_HydroEquipment, :Electrical_Service, :FAR, :Height_Of_Drop, :KWatt_Hours_Annually, :Load_Capacity, :Loading_Docks, :Roof, :Sewer, :Special_Permit, :Volume_Water, :Zoning_Permit, :exposure, :pets, :price_per_sqft, :smoking, :unit_placement, :when_available, :year_built, :zoning, :marketvalue, :mortgageAPR, :mortgageamount, :mortgagetype,  :total_rooms, :hoa, :Annual_real_estate_tax, :north, :south, :east, :west, :bedrooms, :full_bath, :half_bath, :quarter_bath, :outdoor_space, :video_link, :property_website, :unit_floor,
    :elevator, :corner_unit, :front_of_building, :rear_of_building, :street_level, :basement, :other_placement, :private_balcony, :private_roof_deck, :common_roof_deck, :common_garden, :indoor_swimming_pool, :outdoor_swimming_pool, :flood_zone, :raised_ground_floor, :other_outdoor_space, :fireplace, :dishwasher, :furnished, :disabled_access, :wheelchair, :entrance, :doorway36, :adjustable,
    :maintenance_fee, :first_month, :last_month, :security_deposit, :rented_by, :available, :subdividable, :gross_income, :GRM, :laundry, :proprerty_website, :backyard, :outdoor_none, :top_floor, :obstructed_views, :floor_through
end
