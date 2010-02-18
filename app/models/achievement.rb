class Achievement < ActiveRecord::Base
  belongs_to :badge
  has_many :tasks
end
