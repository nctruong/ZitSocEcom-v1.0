class ProductUnitAssociationsController < ApplicationController
  before_action :set_product_unit_association, only: [:show, :edit, :update, :destroy]

  respond_to :html

  def index
    @product_unit_associations = ProductUnitAssociation.all
    respond_with(@product_unit_associations)
  end

  def show
    respond_with(@product_unit_association)
  end

  def new
    @product_unit_association = ProductUnitAssociation.new
    respond_with(@product_unit_association)
  end

  def edit
  end

  def create
    @product_unit_association = ProductUnitAssociation.new(product_unit_association_params)
    @product_unit_association.save
    respond_with(@product_unit_association)
  end

  def update
    @product_unit_association.update(product_unit_association_params)
    respond_with(@product_unit_association)
  end

  def destroy
    @product_unit_association.destroy
    respond_with(@product_unit_association)
  end

  private
    def set_product_unit_association
      @product_unit_association = ProductUnitAssociation.find(params[:id])
    end

    def product_unit_association_params
      params.require(:product_unit_association).permit(:product_id, :product_unit_id, :isDefault, :ratio, :creator_id)
    end
end
