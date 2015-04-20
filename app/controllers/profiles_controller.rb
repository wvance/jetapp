class ProfilesController < ApplicationController
  def showProfile
  	@user_byName = User.find_by_profileName(params[:id])
  	@user_comments = Comment.where(:user_id => @user_byName.id)
  	@user_ideas = Idea.where(:author => @user_byName.profileName)
  end
end
