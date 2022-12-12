class Public::ReviewsController < ApplicationController

  def new
    @review = Review.new
  end

  def create
    @review = Review.new(review_params)
    @review.member_id = current_member.id
    @review.resort_id = params[:resort_id]
    if @review.save
      redirect_to resorts_path, notice: "You have created review successfully."
    else
      render 'new'
    end
  end



  def index
  end

  def edit
  end

  def update

  end

  private

  def review_params
    params.require(:review).permit(:title, :body, :the_day, :rate)
  end

end
