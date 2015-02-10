class CustomerGroupsController < ApplicationController
  before_action :set_customer_group, only: [:show, :edit, :update, :destroy]

  respond_to :html

  def index
    @customer_groups = CustomerGroup.all
    respond_with(@customer_groups)
  end

  def show
    respond_with(@customer_group)
  end

  def new
    @customer_group = CustomerGroup.new
    respond_with(@customer_group)
  end

  def edit
  end

  def create
    @customer_group = CustomerGroup.new(customer_group_params)
    @customer_group.save
    respond_with(@customer_group)
  end

  def update
    @customer_group.update(customer_group_params)
    respond_with(@customer_group)
  end

  def destroy
    @customer_group.destroy
    respond_with(@customer_group)
  end

  private
    def set_customer_group
      @customer_group = CustomerGroup.find(params[:id])
    end

    def customer_group_params
      params.require(:customer_group).permit(:title, :description, :reduce_percent, :visible, :creator_id)
    end
end
