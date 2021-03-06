class SessionsController < ApplicationController

	def new
	end

	def create
		member = Member.find_by(email: params[:session][:email].downcase)
		if member && member.authenticate(params[:session][:password])
			# Log the user in and redirect to the user's show page.
		 	log_in(member)
		 	redirect_to member
		else
			flash.now[:danger] = 'Invalid email/password combination'
			render 'new'
		end
	end

	def destroy
		log_out
		redirect_to root_url
	end
end
