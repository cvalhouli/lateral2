require 'test_helper'

class PropertiesControllerTest < ActionController::TestCase
  setup do
    @property = properties(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:properties)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create property" do
    assert_difference('Property.count') do
      post :create, property: { address1: @property.address1, address2: @property.address2, city: @property.city, marketvalue: @property.marketvalue, mortgageAPR: @property.mortgageAPR, mortgageamount: @property.mortgageamount, mortgagetype: @property.mortgagetype, property_type: @property.property_type, state: @property.state, zipcode: @property.zipcode }
    end

    assert_redirected_to property_path(assigns(:property))
  end

  test "should show property" do
    get :show, id: @property
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @property
    assert_response :success
  end

  test "should update property" do
    put :update, id: @property, property: { address1: @property.address1, address2: @property.address2, city: @property.city, marketvalue: @property.marketvalue, mortgageAPR: @property.mortgageAPR, mortgageamount: @property.mortgageamount, mortgagetype: @property.mortgagetype, property_type: @property.property_type, state: @property.state, zipcode: @property.zipcode }
    assert_redirected_to property_path(assigns(:property))
  end

  test "should destroy property" do
    assert_difference('Property.count', -1) do
      delete :destroy, id: @property
    end

    assert_redirected_to properties_path
  end
end
