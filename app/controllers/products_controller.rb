class ProductsController < ApplicationController


  def index
    @products = Product.paginate(:page => params[:page], :per_page => 30)

  end

  def show
    set_product
  end

  # def search_by_item
  #   products = Product.all
  #   paired_item = []
  #   products.each do |product|
  #     if

  # end

  def search_by_category
    paired_category = Product.where(category: params[:category])
  end

  def search_by_price
    if params[:price_level == "high"]
      @products = Product.where("price >= 50")
    elsif params[:price_level == "med"]
      @products = Product.where("price >= 20 and price < 50")
    elsif params[:price_level == "low"]
      @products = Product.where("price < 20")
    else
      @products = Product.all
    end
    render json: @products
  end

  def search_by_instock
    @product = Product.where("stock > 0")
   # products = Product.all
   # @prodct = []
   # products.each do |product|
   #    if product.in_stock > 0
   #      @product << product
   #    end
   #  end
  end



  private
    # Use callbacks to share common setup or constraints between actions.
    def set_product
      @product = Product.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def product_params
      params.require(:product).permit(:title, :price, :description, :in_stock)
    end
end
