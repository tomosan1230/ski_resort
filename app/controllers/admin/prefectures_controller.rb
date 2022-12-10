class Admin::PrefecturesController < ApplicationController
  before_action :authenticate_admin!

  def index
    @prefectures = Prefecture.all
    @prefecture =Prefecture.new
  end

  def create
    @prefecture = Prefecture.new(prefecture_params)
    if @prefecture.save
      redirect_to admin_prefectures_path, notice: '内容を保存しました'
    else
      flash[:notice] = "保存できませんでした"
      @prefectures = Prefecture.all
      render :index
    end
  end

  def edit
   @prefecture = Prefecture.find(params[:id])
  end

  def update
    @prefecture = Prefecture.find(params[:id])
    if @prefecture.update(prefecture_params)
      redirect_to admin_prefectures_path, notice: '内容を保存しました'
    else
      flash[:notice] = "保存できませんでした"
      render :edit
    end
  end

  def destroy
    @prefecture = Prefecture.find(params[:id])
    @prefecture.destroy
    redirect_to admin_prefectures_path, notice: '削除しました'
  end

  private

  def prefecture_params
    params.require(:prefecture).permit(:name)
  end

end
