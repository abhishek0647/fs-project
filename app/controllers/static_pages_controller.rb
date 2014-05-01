class StaticPagesController < ApplicationController
	def home

	end

	def dashboard
		@events = Event.all
	end
end
