class ProductsController < ApplicationController
  def index
    @cart = session[:cart]
  end

  def add
  cart << params[:product]
  @cart = cart
  render :index
  end
end
