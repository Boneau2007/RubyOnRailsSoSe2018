class HomeController < ApplicationController
	
	before_action :get_data, only: [:index, :show]
	# GET /questions
	def index 
		@questions = Question.all
		@question = @questions.find(params[:questions_id])
	end
end
