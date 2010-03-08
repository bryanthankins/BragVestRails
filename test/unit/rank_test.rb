require 'test_helper'

class RankTest < ActiveSupport::TestCase
  test "Rank CRUD" do
   	rank = Rank.new
   	rank.name = "test"
   	rank.save
   	
   	assert_not_nil rank2 = Rank.find(rank.id)
   	assert_equal rank, rank2
   	
   	rank2.name = "test2"
   	rank2.save
   	
   	rank2.destroy   	
  end
end
