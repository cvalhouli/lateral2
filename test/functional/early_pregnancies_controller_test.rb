require 'test_helper'

class EarlyPregnanciesControllerTest < ActionController::TestCase
  setup do
    @early_pregnancy = early_pregnancies(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:early_pregnancies)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create early_pregnancy" do
    assert_difference('EarlyPregnancy.count') do
      post :create, early_pregnancy: { teen_pregnancy: @early_pregnancy.teen_pregnancy, zip: @early_pregnancy.zip }
    end

    assert_redirected_to early_pregnancy_path(assigns(:early_pregnancy))
  end

  test "should show early_pregnancy" do
    get :show, id: @early_pregnancy
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @early_pregnancy
    assert_response :success
  end

  test "should update early_pregnancy" do
    put :update, id: @early_pregnancy, early_pregnancy: { teen_pregnancy: @early_pregnancy.teen_pregnancy, zip: @early_pregnancy.zip }
    assert_redirected_to early_pregnancy_path(assigns(:early_pregnancy))
  end

  test "should destroy early_pregnancy" do
    assert_difference('EarlyPregnancy.count', -1) do
      delete :destroy, id: @early_pregnancy
    end

    assert_redirected_to early_pregnancies_path
  end
end
