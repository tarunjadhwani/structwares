class NotificationsMailer < ActionMailer::Base
  default :from => "structwares@gmail.com"
  default :to => "vinit@structwares.com"

  def new_message(message)
    @message = message
    mail(:subject => "[structwares.com] #{message.subject}")
  end
end