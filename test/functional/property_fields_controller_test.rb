require 'test_helper'

class PropertyFieldsControllerTest < ActionController::TestCase
  setup do
    @property_field = property_fields(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:property_fields)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create property_field" do
    assert_difference('PropertyField.count') do
      post :create, property_field: { Cap_Rate: @property_field.Cap_Rate, City_Water: @property_field.City_Water, Clear_Height: @property_field.Clear_Height, Construction_Docs_Ready: @property_field.Construction_Docs_Ready, Efficiency_of_HydroEquipment: @property_field.Efficiency_of_HydroEquipment, Electrical_Service: @property_field.Electrical_Service, FAR: @property_field.FAR, Height_Of_Drop: @property_field.Height_Of_Drop, KWatt_Hours_Annually: @property_field.KWatt_Hours_Annually, Load_Capacity: @property_field.Load_Capacity, Loading_Docks: @property_field.Loading_Docks, Roof: @property_field.Roof, Sewer: @property_field.Sewer, Special_Permit: @property_field.Special_Permit, Volume_Water: @property_field.Volume_Water, Zoning_Permit: @property_field.Zoning_Permit, exposure: @property_field.exposure, pets: @property_field.pets, price_per_sqft: @property_field.price_per_sqft, smoking: @property_field.smoking, unit_placement: @property_field.unit_placement, when_available: @property_field.when_available, year_built: @property_field.year_built, zoning: @property_field.zoning }
    end

    assert_redirected_to property_field_path(assigns(:property_field))
  end

  test "should show property_field" do
    get :show, id: @property_field
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @property_field
    assert_response :success
  end

  test "should update property_field" do
    put :update, id: @property_field, property_field: { Cap_Rate: @property_field.Cap_Rate, City_Water: @property_field.City_Water, Clear_Height: @property_field.Clear_Height, Construction_Docs_Ready: @property_field.Construction_Docs_Ready, Efficiency_of_HydroEquipment: @property_field.Efficiency_of_HydroEquipment, Electrical_Service: @property_field.Electrical_Service, FAR: @property_field.FAR, Height_Of_Drop: @property_field.Height_Of_Drop, KWatt_Hours_Annually: @property_field.KWatt_Hours_Annually, Load_Capacity: @property_field.Load_Capacity, Loading_Docks: @property_field.Loading_Docks, Roof: @property_field.Roof, Sewer: @property_field.Sewer, Special_Permit: @property_field.Special_Permit, Volume_Water: @property_field.Volume_Water, Zoning_Permit: @property_field.Zoning_Permit, exposure: @property_field.exposure, pets: @property_field.pets, price_per_sqft: @property_field.price_per_sqft, smoking: @property_field.smoking, unit_placement: @property_field.unit_placement, when_available: @property_field.when_available, year_built: @property_field.year_built, zoning: @property_field.zoning }
    assert_redirected_to property_field_path(assigns(:property_field))
  end

  test "should destroy property_field" do
    assert_difference('PropertyField.count', -1) do
      delete :destroy, id: @property_field
    end

    assert_redirected_to property_fields_path
  end
end
