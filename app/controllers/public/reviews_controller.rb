class Public::ReviewsController < ApplicationController

  def new
    @review = Review.new
  end

  def create
    @review = Review.new(review_params)
    @review.member_id = current_member.id
    @review.resort_id = 
    if @review.save
      redirect_to ski_resort_path(@resort), notice: "You have created review successfully."
    else
      @reviews = review.all
      render 'index'
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
    params.require(:review).permit(:title, :body, :the_day, :star)
  end

end
