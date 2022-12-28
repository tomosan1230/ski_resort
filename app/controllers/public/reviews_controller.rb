class Public::ReviewsController < ApplicationController
  before_action :authenticate_member!
  before_action :ensure_guest_user, only: [:new]

  def new
    @review = Review.new
    @review.resort_id = params[:resort_id]
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
    @review = Review.find(params[:id])
  end

  def update
    @review = Review.find(params[:id])
    @review.member_id = current_member.id
    @review.resort_id = params[:resort_id]
    if @review.update
      redirect_to resorts_path, notice: "You have created review successfully."
    else
      render 'edit'
    end
  end

  def destroy
    review = Review.find(params[:id])
    review.member_id = current_member.id
    review.resort_id = params[:resort_id]
    if review.destroy
      redirect_to resort_path(params[:resort_id]), notice: "レビューを削除しました"
    else
      render 'show'
    end
  end

  private

  def review_params
    params.require(:review).permit(:title, :body, :the_day, :rate)
  end

  def ensure_guest_user
    @member = current_member
    if @member.nick_name == "guestuser"
      redirect_to member_path(current_member) , notice: 'ゲストユーザーはレビュー作成画面へ遷移できません。'
    end
  end

end
