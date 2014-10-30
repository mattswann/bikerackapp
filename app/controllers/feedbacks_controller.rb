
class FeedbacksController < ApplicationController

	def index
		@feedbacks = Feedback.all
		@search_result = BikeRack.all

	end

	def show
		@feedback = Feedback.find(params[:id])
		@brack = BikeRack.all
	end

	def update 
		@feedback = Feedback.find(params[:id])
		@feedback.update(feedback_params)
		redirect_to '/feedback'
	end

	def edit 
		@feedback = Feedback.find(params[:id])
	end

	def new
		@feedback = Feedback.new
		@brack = BikeRack.all
	end

	def create 
		@feedback = Feedback.new(feedback_params)
		if @feedback.save
			redirect_to root_path
		else
			render :new
		end
	end

	private 
	def method_name
		params.require(:feedback).permit(:feedback, :site, :bikerack_id => [])
	end

end