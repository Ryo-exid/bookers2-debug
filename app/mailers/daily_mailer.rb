class DailyMailer < ApplicationMailer

  def daily_notification
    mail(subject: "Daily Report of Your Record", bcc: User.pluck(:email) )
  end

end
