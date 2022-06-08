class ProductsController < ApplicationController
  skip_before_action :authenticate_user!
  before_action :set_product, only: [:show, :destroy]

  def index
    @products = Product.all
  end

  def show
  end

  # def new
  #   @product = Product.new
  # end

  # def create
  #   @product = Product.new(product_params)
  #   if @product.save
  #     redirect_to product_path(@product)
  #     flash[:success] = "Product is saved!"
  #   else
  #     render :new
  #   end
  # end

  # def edit
  #   @user = current_user
  #   @product = Product.find(params[:id])
  #   @product.user = @user
  # end

  # def update
  #   @user = current_user
  #   @product = @user.task.find(params[:id])
  #   if @product.update_attributes(product_params)
  #     flash[:success] = "Product updated!"
  #     redirect_to user_products_path(current_user)
  #   else
  #     render action: :edit
  #   end
  # end

  # def destroy
  #   @product.destroy
  #   redirect_to products_path
  # end

  private

  def set_product
    @product = Product.find(params[:id])
  end

  def product_params
    params.require(:product).permit(:number_of_place, :weight, :age_of_product, :details, :child_weight, :marque, :color, :prix_par_jour, :rating)
  end
end
