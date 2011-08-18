class AddPrintToManager < ActiveRecord::Migration
  def self.up
    add_column :managers, :print, :integer
  end

  def self.down
    remove_column :managers, :print
  end
end
