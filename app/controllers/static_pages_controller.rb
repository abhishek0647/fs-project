class StaticPagesController < ApplicationController
	def home

	end

	def dashboard
		@events = current_user.subscribed_events
	end

	def contacts
		
	end

	def resources

	end
end
