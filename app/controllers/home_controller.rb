class HomeController < ApplicationController

	before_action :get_data, only: [:index, :show]
	# GET /questions
	def index
		@questions = Question.all
	end

	def get_data
		@questions = Question.all
	end
end
