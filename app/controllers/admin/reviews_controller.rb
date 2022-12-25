class Admin::ReviewsController < ApplicationController
  before_action :authenticate_admin!

  def index
    if params[:latest]
      @reviews = Review.latest.page(params[:page]).per(10)
    elsif params[:old]
      @reviews = Review.old.page(params[:page]).per(10)
    elsif params[:rate_count]
      @reviews = Review.rate_count.page(params[:page]).per(10)
    else
      @reviews = Review.page(params[:page]).per(10)
    end
  end

  def destroy
    @review = Review.find(params[:id])
    @review.member_id = @review.member.id
    @review.resort_id = params[:resort_id]
    if @review.destroy
      redirect_to admin_reviews_path, notice: "レビューを削除しました"
    else
      render 'show'
    end
  end

  private

  def review_params
    params.require(:review).permit(:title, :body, :the_day, :rate)
  end

end
