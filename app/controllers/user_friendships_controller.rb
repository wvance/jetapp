class UserFriendshipsController < ApplicationController

	respond_to :html, :json
	
	def index 
		@user_friendships = current_user.user_friendships.all
	end 

	def accept 
		@user_friendship = current_user.user_friendships.find(params[:id])

		if @user_friendship.accept!
			flash[:success] = "You are now friends with #{@user_friendship.friend.firstName}"
		else 
			flash[:error] = "That friendship could not be accepted."
		end

		redirect_to user_friendships_path
	end

	def new
    if params[:friend_id]
			@friend = User.find(params[:friend_id])
	    raise ActiveRecord::RecordNotFound if @friend.nil?
			@user_friendship = current_user.user_friendships.new(friend: @friend)
		else 
			flash[:error] ="friend required"
		end
		rescue ActiveRecord::RecordNotFound
			render file:'public/404', status: :not_found
	end

	def create 
		if user_friendship_params[:friend_id]
			@friend = User.where(profileName: user_friendship_params[:friend_id]).first

			@user_friendship = UserFriendship.request(current_user, @friend)

			# @user_friendship.save

			respond_to do |format|
				if @user_friendship.new_record?
	        format.html do 
	          flash[:error] = "There was problem creating that friend request."
	          # redirect_to root_path
	        end
	        format.json { render json: @user_friendship.to_json, status: :precondition_failed }
	    	else
	        format.html do
	          flash[:success] = "Friend request sent."
	          redirect_to root_path
	        end
	        format.json { render json: @user_friendship.to_json }
	      end
    	end
		else
			flash[:error] = "Friend required"
			# redirect_to root_path
		end
	end

	def edit 
		@user_friendship = current_user.user_friendships.find(params[:id])
		@friend = @user_friendship.friend
	end

	private
    # Never trust parameters from the scary internet, only allow the white list through.
    def user_friendship_params
      params.require(:user_friendship).permit(:user, :user_id, :friend, :friend_id, :state)
    end
end
