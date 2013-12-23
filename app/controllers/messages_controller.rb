class MessagesController < ApplicationController

 def new
  @message = Message.new
 end

  def create
    @message = Message.new(params[:message])
    
    if @message.valid?
      NotificationsMailer.new_message(@message).deliver
      redirect_to(root_path, :notice => "Message was successfully sent.")
    else
      render :new
    end
  end

end
