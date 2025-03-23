class Api::V1::ShopsController < ApplicationController
  skip_before_action :verify_authenticity_token

  def index
    @shops = Shop.all
    render json: @shops
  end

  def show
    @shop = Shop.find(params[:id])
    render json: @shop
  end

  def create
    @shop = Shop.new(shop_params)
    if @shop.save
      render json: @shop, status: :created
    else
      render json: @shop.errors, status: :unprocessable_entity
    end
  end

  def update
    @shop = Shop.find(params[:id])
    if @shop.update(shop_params)
      render json: @shop
    else
      render json: @shop.errors, status: :unprocessable_entity
    end
  end

  def destroy
    @shop = Shop.find(params[:id])
    @shop.destroy
    head :no_content
  end

  private

  def shop_params
    params.require(:shop).permit(:name, :owner_id)
  end
end
