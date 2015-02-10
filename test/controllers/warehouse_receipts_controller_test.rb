require 'test_helper'

class WarehouseReceiptsControllerTest < ActionController::TestCase
  setup do
    @warehouse_receipt = warehouse_receipts(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:warehouse_receipts)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create warehouse_receipt" do
    assert_difference('WarehouseReceipt.count') do
      post :create, warehouse_receipt: { created: @warehouse_receipt.created, creator_id: @warehouse_receipt.creator_id, reduce_percent: @warehouse_receipt.reduce_percent, reduce_price: @warehouse_receipt.reduce_price, status: @warehouse_receipt.status, supplier_order_id: @warehouse_receipt.supplier_order_id, total_excl: @warehouse_receipt.total_excl, total_incl: @warehouse_receipt.total_incl, total_reduced: @warehouse_receipt.total_reduced, warehouse_id: @warehouse_receipt.warehouse_id }
    end

    assert_redirected_to warehouse_receipt_path(assigns(:warehouse_receipt))
  end

  test "should show warehouse_receipt" do
    get :show, id: @warehouse_receipt
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @warehouse_receipt
    assert_response :success
  end

  test "should update warehouse_receipt" do
    patch :update, id: @warehouse_receipt, warehouse_receipt: { created: @warehouse_receipt.created, creator_id: @warehouse_receipt.creator_id, reduce_percent: @warehouse_receipt.reduce_percent, reduce_price: @warehouse_receipt.reduce_price, status: @warehouse_receipt.status, supplier_order_id: @warehouse_receipt.supplier_order_id, total_excl: @warehouse_receipt.total_excl, total_incl: @warehouse_receipt.total_incl, total_reduced: @warehouse_receipt.total_reduced, warehouse_id: @warehouse_receipt.warehouse_id }
    assert_redirected_to warehouse_receipt_path(assigns(:warehouse_receipt))
  end

  test "should destroy warehouse_receipt" do
    assert_difference('WarehouseReceipt.count', -1) do
      delete :destroy, id: @warehouse_receipt
    end

    assert_redirected_to warehouse_receipts_path
  end
end
