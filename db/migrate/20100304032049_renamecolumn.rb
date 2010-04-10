class Renamecolumn < ActiveRecord::Migration
  def self.up
  	rename_column :tasks, :phoneTasks_id, :phoneTask_id  	
  end

  def self.down
  	rename_column :tasks, :phoneTask_id, :phoneTasks_id
  end
end
