require 'test_helper'

class WarehouseBillsControllerTest < ActionController::TestCase
  setup do
    @warehouse_bill = warehouse_bills(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:warehouse_bills)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create warehouse_bill" do
    assert_difference('WarehouseBill.count') do
      post :create, warehouse_bill: { created: @warehouse_bill.created, creator_id: @warehouse_bill.creator_id, customer_order_id: @warehouse_bill.customer_order_id, note: @warehouse_bill.note, reduce_percent: @warehouse_bill.reduce_percent, reduce_price: @warehouse_bill.reduce_price, status: @warehouse_bill.status, total_excl: @warehouse_bill.total_excl, total_incl: @warehouse_bill.total_incl, total_reduced: @warehouse_bill.total_reduced, warehouse_id: @warehouse_bill.warehouse_id }
    end

    assert_redirected_to warehouse_bill_path(assigns(:warehouse_bill))
  end

  test "should show warehouse_bill" do
    get :show, id: @warehouse_bill
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @warehouse_bill
    assert_response :success
  end

  test "should update warehouse_bill" do
    patch :update, id: @warehouse_bill, warehouse_bill: { created: @warehouse_bill.created, creator_id: @warehouse_bill.creator_id, customer_order_id: @warehouse_bill.customer_order_id, note: @warehouse_bill.note, reduce_percent: @warehouse_bill.reduce_percent, reduce_price: @warehouse_bill.reduce_price, status: @warehouse_bill.status, total_excl: @warehouse_bill.total_excl, total_incl: @warehouse_bill.total_incl, total_reduced: @warehouse_bill.total_reduced, warehouse_id: @warehouse_bill.warehouse_id }
    assert_redirected_to warehouse_bill_path(assigns(:warehouse_bill))
  end

  test "should destroy warehouse_bill" do
    assert_difference('WarehouseBill.count', -1) do
      delete :destroy, id: @warehouse_bill
    end

    assert_redirected_to warehouse_bills_path
  end
end
