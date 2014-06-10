class StaticPagesController < ApplicationController
	skip_before_filter  :verify_authenticity_token

	def home

	end

	def dashboard
		@events = current_user.subscribed_events
	end

	def contacts
		
	end

	def resources

	end

	def blog
		
	end

	def bsblog
		
	end

	def syntaxHighlighting
		
	end

	def nodejs
		
	end

	def restfulApi
		
	end

	def contactform
		respond_to do |format|
			email = params[:email]
			body = params[:body]

			ContactMailer.new_contact(email,body).deliver

			format.js { render partial: '/static_pages/contacted'}
		end
	end
end
