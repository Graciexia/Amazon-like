class ProductsOrdersController < ApplicationController
  before_action :set_products_order, only: [:show, :edit, :update, :destroy]

  # GET /products_orders
  # GET /products_orders.json
  def index
    @products_orders = ProductsOrder.all
  end

  # GET /products_orders/1
  # GET /products_orders/1.json
  def show
  end

  # GET /products_orders/new
  def new
    @products_order = ProductsOrder.new
  end

  # GET /products_orders/1/edit
  def edit
  end

  # POST /products_orders
  # POST /products_orders.json
  def create
    @products_order = ProductsOrder.new(products_order_params)

    respond_to do |format|
      if @products_order.save
        format.html { redirect_to @products_order, notice: 'Products order was successfully created.' }
        format.json { render :show, status: :created, location: @products_order }
      else
        format.html { render :new }
        format.json { render json: @products_order.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /products_orders/1
  # PATCH/PUT /products_orders/1.json
  def update
    respond_to do |format|
      if @products_order.update(products_order_params)
        format.html { redirect_to @products_order, notice: 'Products order was successfully updated.' }
        format.json { render :show, status: :ok, location: @products_order }
      else
        format.html { render :edit }
        format.json { render json: @products_order.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /products_orders/1
  # DELETE /products_orders/1.json
  def destroy
    @products_order.destroy
    respond_to do |format|
      format.html { redirect_to products_orders_url, notice: 'Products order was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_products_order
      @products_order = ProductsOrder.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def products_order_params
      params.require(:products_order).permit(:quantity)
    end
end
