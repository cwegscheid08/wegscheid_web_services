require 'test_helper'

class MembersLoginTest < ActionDispatch::IntegrationTest
  
	def setup
		@member = members(:chris)
	end

	test 'login with invalid information' do
		get login_path
		assert_template 'sessions/new'
		post login_path, params: { session: { email: "", password: "" } }
		assert_template 'sessions/new'
		assert_not flash.empty?
		get root_path
		assert flash.empty?
	end

	test 'login with valid information' do
		get login_path
		post login_path, params: { session: { 	email: 	@member.email,
												password: 'password' } }
		assert_redirected_to @member
		follow_redirect!
		assert_template 'members/show'
		assert_select "a[href=?]", login_path, count: 0
		assert_select "a[href=?]", logout_path
		assert_select "a[href=?]", member_path(@member)
	end
end