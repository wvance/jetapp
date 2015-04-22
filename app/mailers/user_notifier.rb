class UserNotifier < ApplicationMailer
	default from: "no-reply@ideajet.com"
  
  def friend_requested(user_friendship_id)
  	user_friendship = UserFriendship.find(user_friendship_id)
  	@user = user_friendship.user
  	@friend = user_friendship.friend

  	mail to: @friend.email, 
  		subject: "#{@user.firstName} wants add you as a friend!"
  end
 	def friend_request_accepted(user_friendship_id)
 		user_friendship = UserFriendship.find(user_friendship_id)
 		@user = user_friendship.user
 		@friend = user_friendship.friend

 		mail to: @user.email,
 			subject:"#{@friend.firstName} has accpeted your friend request."
 	end
end
