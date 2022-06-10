class LocationsController < ApplicationController
  before_action :set_location, only: :destroy
  before_action :set_product, only: [:new, :create]

  def index
    @location = Location.all
  end

  def new
    @location = Location.new
  end

  def create
    @location = Location.new(location_params)
    @location.product = @product
    @location.user = current_user
    if @location.save
      redirect_to products_path, notice: "Merci pour votre réservation"
    else
      render :new
    end
  end

  # def show
  # end

  # def edit
  # end

  # def update
  # end

  def destroy
    @location.destroy
    redirect_to products_path
  end

  private

  def location_params
    params.require(:location).permit(:user_id, :product_id, :date_debut, :date_fin, :montant_total , :frais_location, :rating)
  end

  def set_location
    @location = Location.find(params[:id])
  end

  def set_product
    @product = Product.find(params[:product_id])
  end
end
