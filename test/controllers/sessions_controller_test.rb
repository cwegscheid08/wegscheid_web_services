require 'test_helper'

class SessionsControllerTest < ActionDispatch::IntegrationTest
  # test "the truth" do
  #   assert true
  # end

  test 'get login path' do
  	get login_path
  	assert_response :success
  end
end
