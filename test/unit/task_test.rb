require 'test_helper'

class TaskTest < ActiveSupport::TestCase
  test "Task CRUD" do
   	task = Task.new
   	task.name = "test"
   	task.save
   	
   	assert_not_nil task2 = Task.find(task.id)
   	assert_equal task, task2
   	
   	task2.name = "test2"
   	task2.save
   	
   	task2.destroy   	
  end
end
