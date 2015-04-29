class WelcomesController < ApplicationController

	skip_before_action :authenticate_user!

	def showLanding
		#redirect_to :action => 'showLanding'
	end

end
