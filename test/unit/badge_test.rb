require 'test_helper'

class BadgeTest < ActiveSupport::TestCase
 test "Badge CRUD" do
   	badge = Badge.new
   	badge.name = "test"
   	badge.save
   	
   	assert_not_nil badge2 = Badge.find(badge.id)
   	assert_equal badge, badge2
   	
   	badge2.name = "test2"
   	badge2.save
   	
   	badge2.destroy   	
  end
end
