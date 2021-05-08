class DailyMailer < ApplicationMailer

  def daily_notification(user)
    default to: -> { User.pluck(:email) }
    mail(subject: "Everyday email !")
  end

  def self.thanks_to_all
    users = User.all
    users.each do |user|
      DailyMailer.daily_notification(user).deliver_now
    end
  end
end
