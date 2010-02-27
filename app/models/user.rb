class User < ActiveRecord::Base
	has_and_belongs_to_many :tasks
  def to_s
    name
  end
  def completed_task?(task)
    tasks.include?(task)
  end
end
