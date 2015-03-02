class CustomerPaidLogsController < ApplicationController
  before_action :set_customer_paid_log, only: [:show, :edit, :update, :destroy]

  respond_to :html

  def index
    @customer_paid_logs = CustomerPaidLog.all
    respond_with(@customer_paid_logs)
  end

  def show
    respond_with(@customer_paid_log)
  end

  def new
    @customer_paid_log = CustomerPaidLog.new
    respond_with(@customer_paid_log)
  end

  def edit
  end

  def create
    @customer_paid_log = CustomerPaidLog.new(customer_paid_log_params)
    @customer_paid_log.save
    respond_with(@customer_paid_log)
  end

  def update
    @customer_paid_log.update(customer_paid_log_params)
    respond_with(@customer_paid_log)
  end

  def destroy
    @customer_paid_log.destroy
    respond_with(@customer_paid_log)
  end

  private
    def set_customer_paid_log
      @customer_paid_log = CustomerPaidLog.find(params[:id])
    end

    def customer_paid_log_params
      params.require(:customer_paid_log).permit(:customer_id, :beforepaid, :paid, :afterpaid, :dateofpayment, :note, :creator_id)
    end
end
