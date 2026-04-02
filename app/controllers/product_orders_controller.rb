class ProductOrdersController < ApplicationController
  before_action :set_order
  before_action :set_product_order, only: %i[ show edit update destroy ]

  def index
    @product_orders = @order.product_orders
  end

  def show
  end

  def new
    @product_order = @order.product_orders.build
  end

  def edit
  end

  def create
    @product_order = @order.product_orders.build(product_order_params)

    respond_to do |format|
      if @product_order.save
        format.html { redirect_to order_product_orders_path(@order), notice: "Product order was successfully created." }
        format.json { render :show, status: :created, location: @product_order }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @product_order.errors, status: :unprocessable_entity }
      end
    end
  end

  def update
    respond_to do |format|
      if @product_order.update(product_order_params)
        format.html { redirect_to order_product_orders_path(@order), notice: "Product order was successfully updated." }
        format.json { render :show, status: :ok, location: @product_order }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @product_order.errors, status: :unprocessable_entity }
      end
    end
  end

  def destroy
    @product_order.destroy

    respond_to do |format|
      format.html { redirect_to order_product_orders_path(@order), status: :see_other, notice: "Product order was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private

  def set_order
    @order = Order.find(params[:order_id])
  end

  def set_product_order
    @product_order = @order.product_orders.find(params[:id])
  end

  def product_order_params
    params.require(:product_order).permit(:product_id, :price, :amount)
  end
end