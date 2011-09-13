class AddSurveyToManager < ActiveRecord::Migration
  def self.up
    add_column :managers, :survey, :boolean, :default => 0
  end

  def self.down
    remove_column :managers, :survey
  end
end
