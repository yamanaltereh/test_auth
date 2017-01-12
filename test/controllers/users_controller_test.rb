require 'test_helper'

class UsersControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get users_url
    assert_response :success
  end

  test "should get new" do
    get new_user_url
    assert_response :success
  end

  test 'add new user' do
    get "/users/new"
    assert_equal 200, status

    post "/users", params: { user: { name: 'asd', email: 'asd', password: 'asd', password_confirmation: 'asd' } }
    follow_redirect!
    assert_equal 200, status
    assert_equal "/users", path
  end
end
