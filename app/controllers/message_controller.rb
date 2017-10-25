class MessageController < ApplicationController
  def create
    sender = User.find(params[:message][:sender])
    conversation = Conservation.find(params[:message][:conversation])
    receiver = conversation.user1 != sender.id ? conversation.user1 : conversation.user2
    user_receiver = User.find(receiver)
    data = {
      "content" => params[:message][:content],
      "sender" => sender.id,
      "sender_name" => sender.name,
      "avatar" => sender.avatar,
      "is_read" => "false"
    }
    puts "----------->#{data}"
    conversation.messages.create(data)
    if conversation.save
        redirect_to user_conservation_path(sender.id,conversation.id)
    else
      puts "ERRRRRRRRRRRRRRR"
    end
    puts "receiver data #{params[:message][:content]}"
  end
end
