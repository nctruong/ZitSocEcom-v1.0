class SupplierProductAssociationsController < ApplicationController
  before_action :set_supplier_product_association, only: [:show, :edit, :update, :destroy]

  respond_to :html

  def index
    @supplier_product_associations = SupplierProductAssociation.all
    respond_with(@supplier_product_associations)
  end

  def show
    respond_with(@supplier_product_association)
  end

  def new
    @supplier_product_association = SupplierProductAssociation.new
    respond_with(@supplier_product_association)
  end

  def edit
  end

  def create
    @supplier_product_association = SupplierProductAssociation.new(supplier_product_association_params)
    @supplier_product_association.save
    respond_with(@supplier_product_association)
  end

  def update
    @supplier_product_association.update(supplier_product_association_params)
    respond_with(@supplier_product_association)
  end

  def destroy
    @supplier_product_association.destroy
    respond_with(@supplier_product_association)
  end

  private
    def set_supplier_product_association
      @supplier_product_association = SupplierProductAssociation.find(params[:id])
    end

    def supplier_product_association_params
      params.require(:supplier_product_association).permit(:supplier_id, :product_id, :product_unit_id, :price, :creator_id)
    end
end
