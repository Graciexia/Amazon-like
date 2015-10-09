class ProductsController < ApplicationController

  def index
    @products = Product.all.paginate(:page => params[:page], :per_page => 12)

    if current_user.orders.where(complete: false).count != 0
      @current_order = User.find(current_user.id).orders
        .where(user_id: current_user.id, complete: false)[0]
        .products_orders.order(quantity: :asc)
      @total_price = 0
      @current_order.each do |item|
        @total_price += (item.quantity * item.product.price)
      end
      @orders_found = true
    else
      @orders_found = false
    end
  end

  def show
    @products = Product.find(params[:id])
    if Order.where(user_id: current_user.id, complete: false)
      @current_order = User.find(current_user.id).orders
        .where(user_id: current_user.id, complete: false)[0]
        .products_orders.order(quantity: :asc)
      @total_price = 0
      @current_order.each do |item|
        @total_price += (item.quantity * item.product.price)
      end
    else
      @current_order = false
    end
  end

  # def search_by_item
  #   products = Product.all
  #   paired_item = []
  #   products.each do |product|
  #     if

  # end



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

end


