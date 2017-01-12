require 'test_helper'

class UserTest < ActiveSupport::TestCase
  test "test user model" do
    assert_equal User.return_success, :success
  end
end
