require 'test_helper'

class StaticPagesControllerTest < ActionDispatch::IntegrationTest

	def setup
		@base_title = "Wegscheid Web Services"
	end

	test 'should get home' do
		get root_path
		assert_response :success
		assert_select "title", "#{@base_title}"
	end

	test 'should get about' do
		get about_path
		assert_response :success
		assert_select 'title', "About | #{@base_title}"
	end

	test 'should get build a site' do
		get services_path
		assert_response :success
		assert_select 'title', "Build a Site | #{@base_title}"
	end

	test 'should get maintain current site' do
		get maintenance_path
		assert_response :success
		assert_select 'title', "Maintain Current Site | #{@base_title}"
	end

	test 'should get contact' do
		get contact_path
		assert_response :success
		assert_select 'title', "Contact | #{@base_title}"
	end

	test 'should get sample_gym' do
		get sample_gym_path
		assert_response :success
		assert_select 'title', "Example Fitness | #{@base_title}"
	end
end
