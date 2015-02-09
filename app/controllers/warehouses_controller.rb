class WarehousesController < ApplicationController
  before_action :set_warehouse, only: [:show, :edit, :update, :destroy]

  respond_to :html

  def index
    @warehouses = Warehouse.all
    respond_with(@warehouses)
  end

  def show
    respond_with(@warehouse)
  end

  def new
    @warehouse = Warehouse.new
    respond_with(@warehouse)
  end

  def edit
  end

  def create
    @warehouse = Warehouse.new(warehouse_params)
    @warehouse.save
    respond_with(@warehouse)
  end

  def update
    @warehouse.update(warehouse_params)
    respond_with(@warehouse)
  end

  def destroy
    @warehouse.destroy
    respond_with(@warehouse)
  end

  private
    def set_warehouse
      @warehouse = Warehouse.find(params[:id])
    end

    def warehouse_params
      params.require(:warehouse).permit(:title, :description, :address, :phone, :fax, :visible, :creator_id)
    end
end
