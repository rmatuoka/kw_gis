class CreateHostings < ActiveRecord::Migration
  def self.up
    create_table :hostings do |t|
      t.integer :manager_id
      t.string :bedroom
      t.timestamps
    end
  end

  def self.down
    drop_table :hostings
  end
end
