class Public::ResortsController < ApplicationController
  def index
    @resorts = Resort.all
    @prefectures = Prefecture.all
  end

  def show
    @resort = Resort.find(params[:id])
    @reviews = Review.all
  end

  private

  def resort_params
    params.require(:resort).permit(:name, :image_id, :feature, :postal_code, :address)
  end

end
