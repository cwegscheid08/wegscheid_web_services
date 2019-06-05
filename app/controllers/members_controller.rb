class MembersController < ApplicationController


	def new
		@member = Member.new
	end

	def create
		@member = Member.create(member_params)
	end

	def index
		@member = Member.all
	end



	private

	def member_params
		params.require(:member).permite(:name, :email, :password, :password_confirmation)
	end
end
