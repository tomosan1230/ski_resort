class Admin::ReviewsController < ApplicationController
  before_action :authenticate_admin!

  def index
    @reviews = Review.page(params[:page]).per(10)
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
