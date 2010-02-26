class Task < ActiveRecord::Base
  belongs_to :achievement
  has_and_belongs_to_many :users
end
