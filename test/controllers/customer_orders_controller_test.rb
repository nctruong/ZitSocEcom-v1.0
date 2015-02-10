require 'test_helper'

class CustomerOrdersControllerTest < ActionController::TestCase
  setup do
    @customer_order = customer_orders(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:customer_orders)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create customer_order" do
    assert_difference('CustomerOrder.count') do
      post :create, customer_order: { created: @customer_order.created, creator_id: @customer_order.creator_id, customer_id: @customer_order.customer_id, note: @customer_order.note, prepaid: @customer_order.prepaid, reduce_percent: @customer_order.reduce_percent, reduce_price: @customer_order.reduce_price, status: @customer_order.status, total_excl: @customer_order.total_excl, total_incl: @customer_order.total_incl, total_reduced: @customer_order.total_reduced }
    end

    assert_redirected_to customer_order_path(assigns(:customer_order))
  end

  test "should show customer_order" do
    get :show, id: @customer_order
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @customer_order
    assert_response :success
  end

  test "should update customer_order" do
    patch :update, id: @customer_order, customer_order: { created: @customer_order.created, creator_id: @customer_order.creator_id, customer_id: @customer_order.customer_id, note: @customer_order.note, prepaid: @customer_order.prepaid, reduce_percent: @customer_order.reduce_percent, reduce_price: @customer_order.reduce_price, status: @customer_order.status, total_excl: @customer_order.total_excl, total_incl: @customer_order.total_incl, total_reduced: @customer_order.total_reduced }
    assert_redirected_to customer_order_path(assigns(:customer_order))
  end

  test "should destroy customer_order" do
    assert_difference('CustomerOrder.count', -1) do
      delete :destroy, id: @customer_order
    end

    assert_redirected_to customer_orders_path
  end
end
