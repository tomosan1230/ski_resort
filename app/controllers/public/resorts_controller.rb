class Public::ResortsController < ApplicationController
    before_action :authenticate_member!

  def index
    @resorts = Resort.page(params[:page]).per(6)
    @prefectures = Prefecture.all
  end

  def show
    @resort = Resort.find(params[:id])
    @prefectures = Prefecture.all
    @reviews = @resort.reviews
  end

  private

  def resort_params
    params.require(:resort).permit(:name, :image_id, :feature, :postal_code, :address)
  end

end
