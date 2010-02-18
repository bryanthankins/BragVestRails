class AddBadgeIdToAchievements < ActiveRecord::Migration
  def self.up
    add_column :achievements, :badge_id, :integer
  end

  def self.down
    remove_column :achievements, :badge_id
  end
end
