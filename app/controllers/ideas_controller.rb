class IdeasController < ApplicationController
  # Each 'def' is an action, inside the ideas_controller. 
  # INDEX IS THE SAME A SHOW
  # CRUD ACTIONS HERE: Create = add, Read = show 
  def showAll
    # These are instance variables, which can be used in the views
    # This is how we display all the Idea(s) in the index view
  	@all_ideas = Idea.all.page(params[:page]).per(12)
  end

  def showAuthorIdea
    # GETS THE IDEAS FOR THE CURRENT USER
    @user_idea = Idea.where(:author => current_user.profileName).page(params[:page]).per(12)
    @new_idea = Idea.new
  end 

  def showIdea
    @new_idea = Idea.new
    @idea = Idea.find(params[:id])
		@comments = @idea.comments.all
		@comment = @idea.comments.build
  end

  def showBMC
    @idea = Idea.find(params[:id])
    @stickies = @idea.stickies.all
    @sticky = @idea.stickies.build

    # THIS SEEMS LIKE A BAD IDEA? HOW ELSE CAN THIS BE IMPLEMENTED??
    @keyPartners = @stickies.where(:section => "Key Partners")
    @keyActivities = @stickies.where(:section => "Key Activities")
    @keyResources = @stickies.where(:section => "Key Resources")
    @valueProposition = @stickies.where(:section => "Value Proposition")
    @customerRelationships = @stickies.where(:section => "Customer Relationships")
    @channels = @stickies.where(:section => "Channels")
    @customerSegments = @stickies.where(:section => "Customer Segments")
    @costStructure = @stickies.where(:section => "Cost Structure")
    @revenueStreams = @stickies.where(:section => "Revenue Streams")
  end

  def newIdea
    @new_idea = Idea.new
  end

  def delete
    # http://stackoverflow.com/questions/18682914/passing-id-to-controller-through-link-to-in-railsner
    @deleteIdea = Idea.find(params[:id]).delete

    if @deleteIdea.save
      current_user.createActivity(@deleteIdea, "deleted")
    else

    end

    redirect_to :action => 'showAll'
  end

  def deleteLast
    # NEED TO CHANGE THIS TO DELETE ONLY WHERE IDEA IS USER
    Idea.last.delete
    # This will redirect the add action to the index action, which then routes to the index view.
    redirect_to :action => 'showAuthorIdea'
  end

  def add 
    # THIS CANT BE RIGHT...
  	@idea = Idea.create(:name => params[:idea][:name], :author => current_user.profileName, :valueProposition => params[:idea][:valueProposition], :customerSegment => params[:idea][:customerSegment], :marketSize => params[:idea][:marketSize], :resources => params[:idea][:resources], :stage => params[:idea][:stage], :vision => params[:idea][:vision], :sector => params[:idea][:sector], :description => params[:idea][:description], :picture =>params[:idea][:picture])
  	
    if @idea.save
      current_user.createActivity(@idea, "created")
    else

    end

    unless @idea.valid?  
   		  flash[:error] = idea.errors.full_messages.join("<br>").html_safe
   	  else 
   		  flash[:success] = "Idea Added!"
    end  
    # This will redirect the add action to the index action, which then routes to the index view.
 		redirect_to :action => 'newIdea'
  end

  def editIdea 
    @idea = Idea.find(params[:id])
  end

  def update
    @idea = Idea.find(params[:id])
    #idea_params = @idea.params
    if @idea.update_attributes(idea_params)
      flash[:success] = "Idea updated!"
      redirect_to :action => 'showAll'
    else
      #render('editIdea')
      flash[:error] = "Edit unsuccessful."
    end
  end

  def current_page(path)
    "active" if current_page?(path)
  end

  def truncate(string, length = 200)
    string.size > length+5 ? [string[0,length],string[-5,5]].join("...") : string
  end

  private

  def set_idea
    @idea = Idea.find(params[:id])
  end

  private 

  def idea_params
    params.require(:idea).permit(:name, :author, :description, :valueProposition, :customerSegment); #, :marketSize, :resources, :stage, :vision, :sector, :picture)
  end


end
