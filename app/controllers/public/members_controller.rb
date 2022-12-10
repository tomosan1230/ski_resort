class Public::MembersController < ApplicationController
  before_action :authenticate_member!

  def show
    @member = current_member
  end

  def edit
    @member = current_member
  end

  def update
    @member = current_member
    if @member.update(member_params)
      redirect_to member_path, notice: "内容を保存しました"
    else
      redirect_to edit_member_path, notice: "保存できませんでした"
    end
  end


  def unsubscribe
    @member = current_member
  end

  def withdraw
    @member = current_member
    @member.update(is_deleted: true)
    reset_session
    flash[:notice] = "退会処理を実行いたしました"
    redirect_to root_path
  end

  private

  def member_params
    params.require(:member).permit(:nick_name, :email)
  end

end
