require 'test_helper'

class ProductUnitAssociationsControllerTest < ActionController::TestCase
  setup do
    @product_unit_association = product_unit_associations(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:product_unit_associations)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create product_unit_association" do
    assert_difference('ProductUnitAssociation.count') do
      post :create, product_unit_association: { creator_id: @product_unit_association.creator_id, isDefault: @product_unit_association.isDefault, product_id: @product_unit_association.product_id, product_unit_id: @product_unit_association.product_unit_id, ratio: @product_unit_association.ratio }
    end

    assert_redirected_to product_unit_association_path(assigns(:product_unit_association))
  end

  test "should show product_unit_association" do
    get :show, id: @product_unit_association
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @product_unit_association
    assert_response :success
  end

  test "should update product_unit_association" do
    patch :update, id: @product_unit_association, product_unit_association: { creator_id: @product_unit_association.creator_id, isDefault: @product_unit_association.isDefault, product_id: @product_unit_association.product_id, product_unit_id: @product_unit_association.product_unit_id, ratio: @product_unit_association.ratio }
    assert_redirected_to product_unit_association_path(assigns(:product_unit_association))
  end

  test "should destroy product_unit_association" do
    assert_difference('ProductUnitAssociation.count', -1) do
      delete :destroy, id: @product_unit_association
    end

    assert_redirected_to product_unit_associations_path
  end
end
