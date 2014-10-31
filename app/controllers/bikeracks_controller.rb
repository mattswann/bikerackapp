class BikeracksController < ApplicationController
	

	def lat_lng
	  @lat_lng ||= session[:lat_lng] ||= get_geolocation_data_the_hard_way
	end

	def index 
		if !params[:search].present?
		 @bracks = BikeRack.all
		 @search_result = BikeRack.all
		else
		@result = params[:search].split(' ').map{|i| "%#{i}%"}.join(' ')
		@search_result = BikeRack.where("address ilike ?", @result)
		end
	end

	def show
		@brack = BikeRack.find(params[:id])
		@search_result = BikeRack.where("address ilike ?", @result)
		@feedbacks = @brack.feedbacks
	end

	


	# def update
	# 	@bikerack = BikeRack.find(params[:id])
	# 	@bikerack.update(bikerack_params)
	# 	redirect_to '/racks'
	# end

	# def edit
	# 	@bikerack = BikeRack.find(params[:id])
	# end

	# def destroy 
	# 	@bikerack = BikeRack.find(params[:id])
	# 	@bike_rack.destroy
	# 	redirect_to '/racks'
	# end 

	# def new
	# 	@bikerack = BikeRack.new
	# end

	# def create
	# 	@bikerack = BikeRack.new(bikerack_params)
	# 	if @bikerack.save
	# 		redirect_to root_path 
	# 	else 
	# 		render :new
	# 	end
	# end

	# private
	# 	def bikerack_params
	# 		params.require(:bikerack).permit(:location, :user_rating, :feedback, :image, :rack_id, :user_ids => [])
	# 	end

	

end
