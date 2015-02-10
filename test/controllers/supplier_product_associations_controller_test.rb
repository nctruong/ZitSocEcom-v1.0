require 'test_helper'

class SupplierProductAssociationsControllerTest < ActionController::TestCase
  setup do
    @supplier_product_association = supplier_product_associations(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:supplier_product_associations)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create supplier_product_association" do
    assert_difference('SupplierProductAssociation.count') do
      post :create, supplier_product_association: { creator_id: @supplier_product_association.creator_id, price: @supplier_product_association.price, product_id: @supplier_product_association.product_id, product_unit_id: @supplier_product_association.product_unit_id, supplier_id: @supplier_product_association.supplier_id }
    end

    assert_redirected_to supplier_product_association_path(assigns(:supplier_product_association))
  end

  test "should show supplier_product_association" do
    get :show, id: @supplier_product_association
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @supplier_product_association
    assert_response :success
  end

  test "should update supplier_product_association" do
    patch :update, id: @supplier_product_association, supplier_product_association: { creator_id: @supplier_product_association.creator_id, price: @supplier_product_association.price, product_id: @supplier_product_association.product_id, product_unit_id: @supplier_product_association.product_unit_id, supplier_id: @supplier_product_association.supplier_id }
    assert_redirected_to supplier_product_association_path(assigns(:supplier_product_association))
  end

  test "should destroy supplier_product_association" do
    assert_difference('SupplierProductAssociation.count', -1) do
      delete :destroy, id: @supplier_product_association
    end

    assert_redirected_to supplier_product_associations_path
  end
end
