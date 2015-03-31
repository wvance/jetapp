class IdeasController < ApplicationController
  # Each 'def' is an action, inside the ideas_controller. 
  # INDEX IS THE SAME A SHOW
  # CRUD ACTIONS HERE: Create = add, Read = show 
  def show
    # These are instance variables, which can be used in the views
    # This is how we display all the Idea(s) in the index view
  	@all_ideas = Idea.all
  	@new_idea = Idea.new

    # GETS THE IDEAS FOR THE CURRENT USER
    @user_idea = Idea.where(:author => current_user.email)
  end
  def delete
  	Idea.last.delete
    # This will redirect the add action to the index action, which then routes to the index view.
  	redirect_to :action => 'show'
  end
  def add 
  	idea = Idea.create(:name => params[:idea][:name], :author => current_user.email, :description => params[:idea][:description], :picture =>params[:idea][:picture])
  	unless idea.valid?  
   		  flash[:error] = idea.errors.full_messages.join("<br>").html_safe
   	  else 
   		  flash[:success] = "Idea Added!"
    end  
    # This will redirect the add action to the index action, which then routes to the index view.
 		redirect_to :action => 'show'
  end

  def update
  end
end
