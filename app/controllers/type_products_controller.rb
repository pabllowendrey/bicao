class TypeProductsController < ApplicationController
  before_action :set_type_product, only: %i[ show edit update destroy ]

  # GET /type_products or /type_products.json
  def index
    @type_products = TypeProduct.all
  end

  # GET /type_products/1 or /type_products/1.json
  def show
  end

  # GET /type_products/new
  def new
    @type_product = TypeProduct.new
  end

  # GET /type_products/1/edit
  def edit
  end

  # POST /type_products or /type_products.json
  def create
    @type_product = TypeProduct.new(type_product_params)

    respond_to do |format|
      if @type_product.save
        format.html { redirect_to @type_product, notice: "Type product was successfully created." }
        format.json { render :show, status: :created, location: @type_product }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @type_product.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /type_products/1 or /type_products/1.json
  def update
    respond_to do |format|
      if @type_product.update(type_product_params)
        format.html { redirect_to @type_product, notice: "Type product was successfully updated." }
        format.json { render :show, status: :ok, location: @type_product }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @type_product.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /type_products/1 or /type_products/1.json
  def destroy
    @type_product.destroy

    respond_to do |format|
      format.html { redirect_to type_products_path, status: :see_other, notice: "Type product was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_type_product
      @type_product = TypeProduct.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def type_product_params
      params.require(:type_product).permit(:name)
    end
end
