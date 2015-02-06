class ProductUnitsController < ApplicationController
  before_action :set_product_unit, only: [:show, :edit, :update, :destroy]

  respond_to :html

  def index
    @product_units = ProductUnit.all
    respond_with(@product_units)
  end

  def show
    respond_with(@product_unit)
  end

  def new
    @product_unit = ProductUnit.new
    respond_with(@product_unit)
  end

  def edit
  end

  def create
    @product_unit = ProductUnit.new(product_unit_params)
    @product_unit.save
    respond_with(@product_unit)
  end

  def update
    @product_unit.update(product_unit_params)
    respond_with(@product_unit)
  end

  def destroy
    @product_unit.destroy
    respond_with(@product_unit)
  end

  private
    def set_product_unit
      @product_unit = ProductUnit.find(params[:id])
    end

    def product_unit_params
      params.require(:product_unit).permit(:title, :description, :visible, :creator_id)
    end
end
