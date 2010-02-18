class AddAchievementIdToTasks < ActiveRecord::Migration
  def self.up
    add_column :tasks, :achievement_id, :integer
  end

  def self.down
    remove_column :tasks, :achievement_id
  end
end
