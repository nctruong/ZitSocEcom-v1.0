class WarehouseReceiptsController < ApplicationController
  before_action :set_warehouse_receipt, only: [:show, :edit, :update, :destroy]

  respond_to :html

  def index
    @warehouse_receipts = WarehouseReceipt.all
    respond_with(@warehouse_receipts)
  end

  def show
    respond_with(@warehouse_receipt)
  end

  def new
    @warehouse_receipt = WarehouseReceipt.new
    respond_with(@warehouse_receipt)
  end

  def edit
  end

  def create
    @warehouse_receipt = WarehouseReceipt.new(warehouse_receipt_params)
    @warehouse_receipt.save
    respond_with(@warehouse_receipt)
  end

  def update
    @warehouse_receipt.update(warehouse_receipt_params)
    respond_with(@warehouse_receipt)
  end

  def destroy
    @warehouse_receipt.destroy
    respond_with(@warehouse_receipt)
  end

  private
    def set_warehouse_receipt
      @warehouse_receipt = WarehouseReceipt.find(params[:id])
    end

    def warehouse_receipt_params
      params.require(:warehouse_receipt).permit(:warehouse_id, :supplier_order_id, :total_excl, :total_incl, :reduce_price, :reduce_percent, :total_reduced, :status, :created, :creator_id)
    end
end
