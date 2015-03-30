class IdeasController < ApplicationController
  def index
  	@idea_item = Idea.all
  	@new_idea = Idea.new
  end
  def delete
  	Idea.last.delete
  	redirect_to :action => 'index'
  	#Put Delete logic here: Fetch todo item ID and delete it
  end
  def add 
  	idea = Idea.create(:name => params[:idea][:name])

  	unless idea.valid?
   		flash[:error] = idea.errors.full_messages.join("<br>").html_safe
   	else 
   		flash[:success] = "YAY: Added!"
 		end

 		redirect_to :action => 'index'
  end

end
