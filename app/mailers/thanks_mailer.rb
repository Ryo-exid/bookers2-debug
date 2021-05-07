class ThanksMailer < ApplicationMailer
  default from: 'notifications@example.com'

  def thanks_email
    @user = params[:user]
    mail(to: @user.email, subject: '会員登録が完了しました。')
  end
end
