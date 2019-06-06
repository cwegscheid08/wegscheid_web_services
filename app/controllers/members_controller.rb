class MembersController < ApplicationController


	def new
		@member = Member.new
	end

	def create
		@member = Member.create(member_params)
		if @member != false
			render 'index'
		else
			render 'new'
		end
	end

	def index
		@members = Member.all
	end

	def show
		@member = Member.find(params[:id])

	end



	private

	def member_params
		params.require(:member).permit(:name, :email, :password, :password_confirmation)
	end
end
