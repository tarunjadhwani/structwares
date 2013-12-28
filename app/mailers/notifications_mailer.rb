class NotificationsMailer < ActionMailer::Base
  default :from => "tarunjadhwani@gmail.com"
  default :to => "tarunjadhwani@gmail.com"

  def new_message(message)
    @message = message
    mail(:subject => "[structwares.com] #{message.subject}")
  end
end
