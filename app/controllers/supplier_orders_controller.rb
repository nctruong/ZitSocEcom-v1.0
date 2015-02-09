class SupplierOrdersController < ApplicationController
  before_action :set_supplier_order, only: [:show, :edit, :update, :destroy]

  respond_to :html

  def index
    @supplier_orders = SupplierOrder.all
    respond_with(@supplier_orders)
  end

  def show
    respond_with(@supplier_order)
  end

  def new
    @supplier_order = SupplierOrder.new
    respond_with(@supplier_order)
  end

  def edit
  end

  def create
    @supplier_order = SupplierOrder.new(supplier_order_params)
    @supplier_order.save
    respond_with(@supplier_order)
  end

  def update
    @supplier_order.update(supplier_order_params)
    respond_with(@supplier_order)
  end

  def destroy
    @supplier_order.destroy
    respond_with(@supplier_order)
  end

  private
    def set_supplier_order
      @supplier_order = SupplierOrder.find(params[:id])
    end

    def supplier_order_params
      params.require(:supplier_order).permit(:supplier_id, :total_excl, :total_incl, :reduce_price, :reduce_percent, :total_reduced, :prepaid, :created, :status, :note, :creator_id)
    end
end
