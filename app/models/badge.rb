class Badge < ActiveRecord::Base
  belongs_to :rank
  has_many :achievements
   def to_param
    "#{id}-#{name. gsub(/\W/, '-') .downcase}"
  end
end
