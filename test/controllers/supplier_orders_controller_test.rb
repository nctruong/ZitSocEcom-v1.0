require 'test_helper'

class SupplierOrdersControllerTest < ActionController::TestCase
  setup do
    @supplier_order = supplier_orders(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:supplier_orders)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create supplier_order" do
    assert_difference('SupplierOrder.count') do
      post :create, supplier_order: { created: @supplier_order.created, creator_id: @supplier_order.creator_id, note: @supplier_order.note, prepaid: @supplier_order.prepaid, reduce_percent: @supplier_order.reduce_percent, reduce_price: @supplier_order.reduce_price, status: @supplier_order.status, supplier_id: @supplier_order.supplier_id, total_excl: @supplier_order.total_excl, total_incl: @supplier_order.total_incl, total_reduced: @supplier_order.total_reduced }
    end

    assert_redirected_to supplier_order_path(assigns(:supplier_order))
  end

  test "should show supplier_order" do
    get :show, id: @supplier_order
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @supplier_order
    assert_response :success
  end

  test "should update supplier_order" do
    patch :update, id: @supplier_order, supplier_order: { created: @supplier_order.created, creator_id: @supplier_order.creator_id, note: @supplier_order.note, prepaid: @supplier_order.prepaid, reduce_percent: @supplier_order.reduce_percent, reduce_price: @supplier_order.reduce_price, status: @supplier_order.status, supplier_id: @supplier_order.supplier_id, total_excl: @supplier_order.total_excl, total_incl: @supplier_order.total_incl, total_reduced: @supplier_order.total_reduced }
    assert_redirected_to supplier_order_path(assigns(:supplier_order))
  end

  test "should destroy supplier_order" do
    assert_difference('SupplierOrder.count', -1) do
      delete :destroy, id: @supplier_order
    end

    assert_redirected_to supplier_orders_path
  end
end
