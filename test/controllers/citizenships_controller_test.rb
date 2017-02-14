require 'test_helper'

class CitizenshipsControllerTest < ActionController::TestCase
  setup do
    @citizenship = citizenships(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:citizenships)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create citizenship" do
    assert_difference('Citizenship.count') do
      post :create, citizenship: { country_name: @citizenship.country_name, origin_citizen: @citizenship.origin_citizen, origin_citizen_for: @citizenship.origin_citizen_for }
    end

    assert_redirected_to citizenship_path(assigns(:citizenship))
  end

  test "should show citizenship" do
    get :show, id: @citizenship
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @citizenship
    assert_response :success
  end

  test "should update citizenship" do
    patch :update, id: @citizenship, citizenship: { country_name: @citizenship.country_name, origin_citizen: @citizenship.origin_citizen, origin_citizen_for: @citizenship.origin_citizen_for }
    assert_redirected_to citizenship_path(assigns(:citizenship))
  end

  test "should destroy citizenship" do
    assert_difference('Citizenship.count', -1) do
      delete :destroy, id: @citizenship
    end

    assert_redirected_to citizenships_path
  end
end
