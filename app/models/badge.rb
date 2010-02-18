class Badge < ActiveRecord::Base
  belongs_to :rank
  has_many :achievements
end
