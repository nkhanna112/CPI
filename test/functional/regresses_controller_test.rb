require 'test_helper'

class RegressesControllerTest < ActionController::TestCase
  setup do
    @regress = regresses(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:regresses)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create regress" do
    assert_difference('Regress.count') do
      post :create, regress: { location: @regress.location, name: @regress.name, propensity: @regress.propensity }
    end

    assert_redirected_to regress_path(assigns(:regress))
  end

  test "should show regress" do
    get :show, id: @regress
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @regress
    assert_response :success
  end

  test "should update regress" do
    put :update, id: @regress, regress: { location: @regress.location, name: @regress.name, propensity: @regress.propensity }
    assert_redirected_to regress_path(assigns(:regress))
  end

  test "should destroy regress" do
    assert_difference('Regress.count', -1) do
      delete :destroy, id: @regress
    end

    assert_redirected_to regresses_path
  end
end
