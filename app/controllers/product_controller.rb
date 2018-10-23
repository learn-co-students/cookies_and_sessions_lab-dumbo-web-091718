class ProductController < ApplicationController

  def index
    @products = Product.all
  end

  def add
    @item = Item.find(params[:id])
    cart = session[:cart] || []
    cart << @item.id
    session[:cart] = cart
  end
end
