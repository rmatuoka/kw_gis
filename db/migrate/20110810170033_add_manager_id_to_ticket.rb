class AddManagerIdToTicket < ActiveRecord::Migration
  def self.up
    add_column :tickets, :manager_id, :integer
  end

  def self.down
    remove_column :tickets, :manager_id
  end
end
