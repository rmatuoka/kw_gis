class AddWarningToManager < ActiveRecord::Migration
  def self.up
    add_column :managers, :warning, :text
  end

  def self.down
    remove_column :managers, :warning
  end
end
