class User < ActiveRecord::Base
	has_and_belongs_to_many :tasks
  def to_s
    name
  end
  def completed_task?(task)
    tasks.include?(task)
  end
  
   # If a user matching the credentials is found, returns the User object.
    # If no matching user is found, returns nil.
    def self.authenticate(user_info)
      find_by_username_and_password(user_info[:username],
                      user_info[:password])
    end
end
