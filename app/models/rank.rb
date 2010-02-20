class Rank < ActiveRecord::Base
  validates_presence_of :name
  has_many :badges
     def to_param
    "#{id}-#{name. gsub(/\W/, '-') .downcase}"
  end
end
