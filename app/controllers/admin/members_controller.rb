class Admin::MembersController < ApplicationController
  def index
    @members = Member.page(params[:page]).per(1)
  end

  def show
    @member = Member.find(params[:id])
  end

  def edit
    @member = Member.find(params[:id])
  end

  def update
    @member = Member.find(params[:id])
    if @member.update(member_params)
      redirect_to admin_member_path, notice: "内容を保存しました"
    else
      flash[:notice] = "保存できませんでした"
      @member = Member.find(params[:id])
      render :edit
    end
  end

  private

  def member_params
    params.require(:member).permit(:nick_name, :email, :is_deleted)
  end

end
