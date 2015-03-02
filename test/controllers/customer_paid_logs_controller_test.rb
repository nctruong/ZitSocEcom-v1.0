require 'test_helper'

class CustomerPaidLogsControllerTest < ActionController::TestCase
  setup do
    @customer_paid_log = customer_paid_logs(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:customer_paid_logs)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create customer_paid_log" do
    assert_difference('CustomerPaidLog.count') do
      post :create, customer_paid_log: { afterpaid: @customer_paid_log.afterpaid, beforepaid: @customer_paid_log.beforepaid, creator_id: @customer_paid_log.creator_id, customer_id: @customer_paid_log.customer_id, dateofpayment: @customer_paid_log.dateofpayment, note: @customer_paid_log.note, paid: @customer_paid_log.paid }
    end

    assert_redirected_to customer_paid_log_path(assigns(:customer_paid_log))
  end

  test "should show customer_paid_log" do
    get :show, id: @customer_paid_log
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @customer_paid_log
    assert_response :success
  end

  test "should update customer_paid_log" do
    patch :update, id: @customer_paid_log, customer_paid_log: { afterpaid: @customer_paid_log.afterpaid, beforepaid: @customer_paid_log.beforepaid, creator_id: @customer_paid_log.creator_id, customer_id: @customer_paid_log.customer_id, dateofpayment: @customer_paid_log.dateofpayment, note: @customer_paid_log.note, paid: @customer_paid_log.paid }
    assert_redirected_to customer_paid_log_path(assigns(:customer_paid_log))
  end

  test "should destroy customer_paid_log" do
    assert_difference('CustomerPaidLog.count', -1) do
      delete :destroy, id: @customer_paid_log
    end

    assert_redirected_to customer_paid_logs_path
  end
end
