class ConservationController < ApplicationController
  def index
    @conservations = Conservation.where(user1: params[:user_id]).or(Conservation.where(user2: params[:user_id]))
    @is_read = Hash.new
    @conservations.each do |conservation|
        messages=Message.where(conservation_id: conservation.id).order("created_at").last
        @is_read[conservation.id] = messages.is_read
        puts "-----------------content>#{@is_read[conservation.id]}"
        
    end

  end

  def show
    @create_message = Message.new
    @conservations = Conservation.where(user1: params[:user_id]).or(Conservation.where(user2: params[:user_id]))
    @sender = User.find(params[:user_id])
    puts "--------asdf>#{Integer(params[:id])}"
    if @conservations.length == 0
      puts "nothing were found"
      @messages = []
    else
      Message.where(conservation_id: params[:id]).update_all(is_read: "true")
      @messages = Message.where(conservation_id: params[:id]).order(:id)
    end

  end
  def create
    #create message here!
  end
  def conservation_params
    params.require(:conservation).permit(:content)
  end
end
