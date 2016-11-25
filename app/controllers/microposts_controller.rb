class MicropostsController < ApplicationController
	def new
		@micropost = Micropost.new
	end

	def show 

		@micropost = Micropost.find_by(params[:id])
		
	end

	def create
		
		@micropost = Micropost.new
		if @micropost.save
			# flash[:success] = "Micropost created!"
			redirect_to microposts_path, notice: "Micropost created!"
		else
			# @feed_items = []
			render 'microposts/show'
		end
		
	end
	
end
