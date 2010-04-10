class Add < ActiveRecord::Migration
  def self.up
  	 add_column :tasks, :phoneTasks_id, :integer  	 
  	 add_column :tasks, :name, :string
  end

  def self.down
  	remove_column :tasks, :phoneTasks_id
  	remove_column :tasks, :name
  end
end
