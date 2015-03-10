class WarehouseBillsController < ApplicationController
  before_action :set_warehouse_bill, only: [:show, :edit, :update, :destroy]

  respond_to :html

  def index
    @warehouse_bills = WarehouseBill.all
    respond_with(@warehouse_bills)
  end

  def show
    respond_with(@warehouse_bill)
  end

  def new
    @warehouse_bill = WarehouseBill.new
    respond_with(@warehouse_bill)
  end

  def edit
  end

  def create
    @warehouse_bill = WarehouseBill.new(warehouse_bill_params)
    @warehouse_bill.save
    respond_with(@warehouse_bill)
  end

  def update
    @warehouse_bill.update(warehouse_bill_params)
    respond_with(@warehouse_bill)
  end

  def destroy
    @warehouse_bill.destroy
    respond_with(@warehouse_bill)
  end

  private
    def set_warehouse_bill
      @warehouse_bill = WarehouseBill.find(params[:id])
    end

    def warehouse_bill_params
      params.require(:warehouse_bill).permit(:warehouse_id, :customer_order_id, :total_excl, :total_incl, :reduce_price, :reduce_percent, :total_reduced, :status, :note, :created, :creator_id)
    end
end
