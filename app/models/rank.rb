class Rank < ActiveRecord::Base
  validates_presence_of :name
  has_many :badges
end
