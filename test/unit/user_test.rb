require 'test_helper'

class UserTest < ActiveSupport::TestCase
  test "User CRUD" do
   	user = User.new
   	user.name = "test"
   	user.save
   	
   	assert_not_nil user2 = User.find(user.id)
   	assert_equal user, user2
   	
   	user2.name = "test2"
   	user2.save
   	
   	user2.destroy   	
  end
end
