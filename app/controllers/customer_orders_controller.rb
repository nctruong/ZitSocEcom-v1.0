class CustomerOrdersController < ApplicationController
  before_action :set_customer_order, only: [:show, :edit, :update, :destroy]

  respond_to :html

  def index
    @customer_orders = CustomerOrder.all
    respond_with(@customer_orders)
  end

  def show
    respond_with(@customer_order)
  end

  def new
    @customer_order = CustomerOrder.new
    respond_with(@customer_order)
  end

  def edit
  end

  def create
    @customer_order = CustomerOrder.new(customer_order_params)
    @customer_order.save
    respond_with(@customer_order)
  end

  def update
    @customer_order.update(customer_order_params)
    respond_with(@customer_order)
  end

  def destroy
    @customer_order.destroy
    respond_with(@customer_order)
  end

  private
    def set_customer_order
      @customer_order = CustomerOrder.find(params[:id])
    end

    def customer_order_params
      params.require(:customer_order).permit(:customer_id, :total_excl, :total_incl, :reduce_price, :reduce_percent, :total_reduced, :prepaid, :created, :status, :note, :creator_id)
    end
end
