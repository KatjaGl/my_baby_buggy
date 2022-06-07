class ProductsController < ApplicationController
  before_action :set_product, only: [:show, :destroy]

  def index
    @products = Product.all
  end

  # def show
  #   @location = Location.new
  #   @categorie = Categorie.new(product: @poduct)
  # end

  # def new
  #   @product = Product.new
  # end

  # def create
  #   @product = Product.new(list_params)
  #   if @product.save
  #     redirect_to product_path(@product)
  #   else
  #     render :new
  #   end
  # end



  # def edit
  # end

  # def update
  # end

  # def destroy
  # end

  # private

  # def set_product
  #   @products = Product.find(params[:id])
  # end

  # def product_params
  #   params.require(:product).permit(:name)
  # end
end
