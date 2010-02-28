class UsersTasks < ActiveRecord::Migration
  def self.up
  	 create_table ("users_tasks",:id=>false) do |t|
      t.integer :user_id
      t.integer :task_id
      end      
  end

  def self.down
  	drop_table :users_tasks
  end
end
