class MicropostsController < ApplicationController
	def new
		@micropost = Micropost.new
	end

	def show 

		@micropost = Micropost.find_by(params[:id])
		
	end

	def create
		
		@micropost = Micropost.new(micropost_params)
		# @micropost = current_user.micropost(micropost_params)
		if @micropost.save
			flash[:notice] = "Micropost created!"
			redirect_to microposts_url 
		else
			# @feed_items = []
			render 'microposts/show'
		end
		
	end
	private
def micropost_params
params.require(:micropost).permit(:content)
end
	
end
