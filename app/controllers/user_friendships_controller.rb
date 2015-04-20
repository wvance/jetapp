class UserFriendshipsController < ApplicationController

	respond_to :html, :json
	def new
    if params[:friend_id]
			@friend = User.find(params[:friend_id])
	    raise ActiveRecord::RecordNotFound if @friend.nil?
			@user_friendship = current_user.user_friendships.new(friend: @friend)
		else 
			flash[:error] ="friend required"
		end
	rescue ActiveRecord::RecordNotFound
		renter file:'public/404', status: :not_found
	end

	def create 
		if user_friendship_params[:friend_id]
			@friend = User.where(profileName: user_friendship_params[:friend_id]).first

			@user_friendship = current_user.user_friendships.new(friend: @friend)
			@user_friendship.save

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
	private
    # Never trust parameters from the scary internet, only allow the white list through.
    def user_friendship_params
      params.require(:user_friendship).permit(:user, :user_id, :friend, :friend_id)
    end
end
