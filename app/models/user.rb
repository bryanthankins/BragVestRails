class User < ActiveRecord::Base
	has_and_belongs_to_many :tasks
	validates_confirmation_of :password
	validates_presence_of :password
	validates_presence_of :email
	validates_uniqueness_of :email

	validates_length_of :password, :in => 6..20
  
  def to_s
    name || email
  end
  
  def completed_task?(task)
    tasks.include?(task)
  end
  
   # If a user matching the credentials is found, returns the User object.
    # If no matching user is found, returns nil.
    def self.authenticate(user_info)
      find_by_email_and_password(user_info[:email],
                      user_info[:password])
    end
end
