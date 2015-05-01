class ProfilesController < ApplicationController
  def showProfile
  	@user_byName = User.find_by_profileName(params[:id]) 						# RETURNS USER OBJECT: NOTE NOT THE ID
  	@user_comments = Comment.where(:user_id => @user_byName.id)
  	@user_ideas = Idea.where(:author => @user_byName.profileName).page(params[:page]).per(8)
  	@user_friendships = @user_byName.user_friendships.all
  	@friendship = current_user.user_friendships.where(:friend_id => @user_byName.id).pluck(:id) # RETURNS AN ID
  end
end
