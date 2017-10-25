class FriendsController < ApplicationController
    def index
        @new_friend = Friend.new 
        @del_friend = Friend.new 
        if current_user
            list1 = Friend.where(user1: current_user.email)
            list2 = Friend.where(user2: current_user.email)
            @list = Array.new
            list1.each {|x| 
                user = User.find_by email: x.user2
                if user
                    @list.push(user)
                end
            }
            list2.each {|x| 
                user = User.find_by email: x.user1
                if user
                    @list.push(user)
                end
            }
        end
    end
    
    def create
        friend = Friend.new(friend_params)
        user = User.find_by email: friend.user2
        list1 = Friend.where(user1: current_user.email)
        list2 = Friend.where(user2: current_user.email)
        is_exist1= list1.find {|e| e.user2 == user.email} 
        is_exist2= list2.find {|e| e.user1 == user.email} 
        if user && (current_user != user) && !is_exist1 && !is_exist2
            friend.user1 = current_user.email
            friend.save()
            redirect_to friends_path
        end
    end
    
    private
    def friend_params
        params.require(:friend).permit :user2
    end

end
