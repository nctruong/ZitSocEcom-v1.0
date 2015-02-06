require 'test_helper'

class ProductUnitsControllerTest < ActionController::TestCase
  setup do
    @product_unit = product_units(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:product_units)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create product_unit" do
    assert_difference('ProductUnit.count') do
      post :create, product_unit: { creator_id: @product_unit.creator_id, description: @product_unit.description, title: @product_unit.title, visible: @product_unit.visible }
    end

    assert_redirected_to product_unit_path(assigns(:product_unit))
  end

  test "should show product_unit" do
    get :show, id: @product_unit
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @product_unit
    assert_response :success
  end

  test "should update product_unit" do
    patch :update, id: @product_unit, product_unit: { creator_id: @product_unit.creator_id, description: @product_unit.description, title: @product_unit.title, visible: @product_unit.visible }
    assert_redirected_to product_unit_path(assigns(:product_unit))
  end

  test "should destroy product_unit" do
    assert_difference('ProductUnit.count', -1) do
      delete :destroy, id: @product_unit
    end

    assert_redirected_to product_units_path
  end
end
