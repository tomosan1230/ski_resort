class Public::SessionsController < Devise::SessionsController
  before_action :member_state, only: [:create]

  protected

  # 退会機能
  def member_state
    @member = Member.find_by(email: params[:member][:email])
    return if !@member
    if @member.valid_password?(params[:member][:password])  && (@member.is_deleted == true)
      flash[:notice] = "退会済みです。再度ご登録をしてご利用ください。"
      redirect_to new_member_registration_path
    else
      flash[:notice] = "項目を入力してください"
    end
  end

end
