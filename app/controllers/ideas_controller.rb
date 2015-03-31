class IdeasController < ApplicationController
  # Each 'def' is an action, inside the ideas_controller. 
  def index
    # These are instance variables, which can be used in the views
    # This is how we display all the Idea(s) in the index view
  	@idea_item = Idea.all
  	@new_idea = Idea.new
  end
  def delete
  	Idea.last.delete
    # This will redirect the add action to the index action, which then routes to the index view.
  	redirect_to :action => 'index'
  end
  def add 
  	idea = Idea.create(:name => params[:idea][:name], :description => params[:idea][:description])
  	unless idea.valid?  
   		  flash[:error] = idea.errors.full_messages.join("<br>").html_safe
   	  else 
   		  flash[:success] = "Idea Added!"
    end  
    # This will redirect the add action to the index action, which then routes to the index view.
 		redirect_to :action => 'index'
  end

end
