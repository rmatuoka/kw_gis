class AddManagerIdToSurvey < ActiveRecord::Migration
  def self.up
    add_column :surveys, :manager_id, :integer
  end

  def self.down
    remove_column :surveys, :manager_id
  end
end
