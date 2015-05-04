class ActivitiesController < ApplicationController
  respond_to :html, :json
  before_filter :authenticate_user!

  def index
  	# DISPLAY ALL MINE AND FRIENDS ACTIVITIES. 
  	# TO GET FRIENDS ID's DO: 
  	# MAP RETURNS user.id for each user and returns array of id's
  	@activities = Activity.for_user(current_user, params)

  	respond_with @activities
  	# PLACED IN MODEL
  	# friend_ids = current_user.friends.map(&:id)
  	# @activities = Activity.where("user_id in (?)", friend_ids.push(current_user.id)).order("created_at desc").all
  	# @activities = Activity.all
  end
end
