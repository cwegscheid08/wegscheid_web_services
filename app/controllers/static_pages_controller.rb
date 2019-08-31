class StaticPagesController < ApplicationController


	def home
	end

	def about
	end

	def services
	end

	def contact
	end

	def maintenance
		# StaticPagesMailer.with(params).maintenance_email.deliver_now
	end

	def sample_gym
	end

	def news
	end

	def portfolio
	end
end
