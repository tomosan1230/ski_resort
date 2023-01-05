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
    impressionist(@resort, nil, unique: [:member_id])
=======
    if params[:latest]
      @reviews = @resort.reviews.latest
    elsif params[:old]
      @reviews = @resort.reviews.old
    elsif params[:rate_count]
      @reviews = @resort.reviews.rate_count
    else
      @reviews = @resort.reviews
    end

  end

  private

  def resort_params
    params.require(:resort).permit(:name, :image_id, :feature, :postal_code, :address)
  end

end
