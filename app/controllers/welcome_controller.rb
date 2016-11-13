class WelcomeController < ApplicationController
	def index
		@clarifies = Clarify.all.limit(3).order("created_at desc")
		@questions = Question.all.limit(3).order("created_at desc")
	end
end
