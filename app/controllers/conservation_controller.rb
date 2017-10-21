class ConservationController < ApplicationController
  def index
    conservations = Conservation.where(user1:params[:user_id]).or(Conservation.where(user2:params[:user_id]))
    puts "size#{conservations}"
    conservations.each do |item|
      puts "id------------------->#{item.id}"
    end
  end
  def show
    conservations = Conservation.where(user1:params[:user_id]).or(Conservation.where(user2:params[:user_id])).select(:id)
    conservations.each do |item|
      puts "const_id------------------->#{item.id}"
    end
    @messages= Message.where(conservation_id:conservations[1].id)
    puts "-------------------------->#{@messages.length}"
    end
end
