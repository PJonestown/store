class ProductsController < ApplicationController
  def index
    @products = Product.all
  end

  def show
  end

  def new
  end
end
