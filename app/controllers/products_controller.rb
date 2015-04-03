class ProductsController < ApplicationController
  def index
    @products = Product.all
  end

  def show
    @product = Product.find(params[:id])
  end

  def new
    @product = Product.new
  end

  def create
    redirect_to @product if @post.save && return
    render :new
  end

  def edit
    @product = Product.find(params[:id])
  end
end
