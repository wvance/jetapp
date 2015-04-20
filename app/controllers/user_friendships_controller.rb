class UserFriendshipsController < ApplicationController

	def new 
		if params[:friend_id]
			@friend = User.find(params[:friend_id])
			@user_friendship = UserFriendship.new(:user => current_user, :friend => @friend)		else
			flash[:error]="friend Required"
		end
	rescue ActiveRecord::RecordNotFound
		renter file:'public/404', status: :not_found
	end

	private
    # Never trust parameters from the scary internet, only allow the white list through.
    def friendship_params
      params.require(:user_friendship).permit(:user, :user_id, :friend, :friend_id)
    end
end
