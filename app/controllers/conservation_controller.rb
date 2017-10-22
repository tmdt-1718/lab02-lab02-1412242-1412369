class ConservationController < ApplicationController
  def index
    @conservations = Conservation.where(user1: params[:user_id]).or(Conservation.where(user2: params[:user_id]))

  end

  def show
    @conservations = Conservation.where(user1: params[:user_id]).or(Conservation.where(user2: params[:user_id])).select(:id)
    puts "const_id------------------->#{@conservations.length}"
    @conservations.each do |item|
      puts "const_id------------------->#{item.id}"
    end
    if @conservations.length == 0
      puts "nothing were found"
      @messages = []
    else
      @messages = Message.where(conservation_id: params[:id])
    end
    end
end
