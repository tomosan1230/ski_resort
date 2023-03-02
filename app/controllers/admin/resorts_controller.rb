class Admin::ResortsController < ApplicationController
  before_action :authenticate_admin!

  def index
    @resorts = Resort.page(params[:page]).per(5)
  end

  def new
    @resort = Resort.new
  end

  def create
    @resort = Resort.new(resort_params)
    if @resort.save
      redirect_to admin_resort_path(@resort.id), notice: "作成に成功しました！"
    else
      render :new
    end
  end

  def show
    @resort = Resort.find(params[:id])
    gon.resort = @user
  end

  def edit
    @resort = Resort.find(params[:id])
  end


  def update
    @resort = Resort.find(params[:id])
    if @resort.update(resort_params)
      redirect_to admin_resort_path(@resort.id), notice: '内容を保存しました'
    else
      render :edit
    end
  end

  def destroy
    @resort = Resort.find(params[:id])
    @resort.destroy
    redirect_to admin_resorts_path
  end

  private

  def resort_params
    params.require(:resort).permit(:name, :image, :feature, :postal_code, :address, :prefecture_id)
  end

end
