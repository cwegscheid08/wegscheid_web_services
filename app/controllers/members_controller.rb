class MembersController < ApplicationController


	def new
		@member = Member.new
	end

	def create
		@member = Member.create(member_params)
		if @member != false
			flash[:success] = "Congrats #{@member.name}, you have created your account."
			render 'show'
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

	def edit
		@member = Member.find(params[:id])
	end

	def update
		@member = Member.find(params[:id])
		if @member.update_attributes(member_params)
			redirect_to @member
		else
			render 'edit'
		end
	end

	def destroy
		Member.find(params[:id]).destroy
		flash[:delete] = "You have successfully deleted your account."
		redirect_to root_url
	end


	private

	def member_params
		params.require(:member).permit(:name, :email, :password, :password_confirmation)
	end
end
