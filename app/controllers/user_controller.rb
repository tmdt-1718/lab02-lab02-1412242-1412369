class UserController < ApplicationController
  def index
    message=Message.all
    conservation = Conservation.all
    puts "----------------------------->#{message}"
    puts "----------------------------->#{conservation}"
  end
end
