
class FeedbacksController < ApplicationController

	def index
		@feedbacks = Feedback.all
		@search_result = BikeRack.all
	end

	def show
		@feedback = Feedback.find(params[:id])
		@brack = BikeRack.all
		raise
	end

	def update 
		@feedback = Feedback.find(params[:id])
		@feedback.update(feedback_params)
		redirect_to bikeracks_path
	end

	def edit 
		@feedback = Feedback.find(params[:id])
	end

	def new
		@feedback = Feedback.new
		@brack = BikeRack.all
	end

	def destroy
		@feedback = Feedback.find(params[:id])
		@feedback.destroy
		redirect_to bikeracks_path
	end

	def create 
		@feedback = Feedback.new(feedback_params)
		if @feedback.save
			redirect_to bikeracks_path
		else
			render :new
		end
	end

	private 
	def feedback_params
		params.require(:feedback).permit(:feedback, :site, :bike_rack_id)
	end

end