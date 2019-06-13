class MemberMailer < ApplicationMailer

	def contact_email
		@member = params[:member]
				
	end
end
