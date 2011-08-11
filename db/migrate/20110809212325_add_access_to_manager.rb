class AddAccessToManager < ActiveRecord::Migration
  def self.up
    add_column :managers, :access, :string
    add_column :managers, :number_of_access, :integer
  end

  def self.down
    remove_column :managers, :number_of_access
    remove_column :managers, :access
  end
end
