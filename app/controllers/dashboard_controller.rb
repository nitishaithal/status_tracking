class DashboardController < ApplicationController
	before_filter :authenticate_user!
	def index
		#@user = User.all	
		@user=User.paginate(:page => params[:page], :per_page => 30)
	end
end