class ProductsController < ApplicationController

  def index
    @products = Product.all.paginate(:page => params[:page], :per_page => 15)

  end

  def show
    @products = Product.find(params[:id])

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
  

end


