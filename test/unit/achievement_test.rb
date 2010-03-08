require 'test_helper'

class AchievementTest < ActiveSupport::TestCase
 test "Achievement CRUD" do
   	achievement = Achievement.new
   	achievement.name = "test"
   	achievement.save
   	
   	assert_not_nil achievement2 = Achievement.find(achievement.id)
   	assert_equal achievement, achievement2
   	
   	achievement2.name = "test2"
   	achievement2.save
   	
   	achievement2.destroy   	
  end
end
