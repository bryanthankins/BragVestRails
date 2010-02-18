class AddRankIdToBadges < ActiveRecord::Migration
  def self.up
    add_column :badges, :rank_id, :integer
  end

  def self.down
    remove_column :badges, :rank_id
  end
end
