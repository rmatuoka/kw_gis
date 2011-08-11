class CreateManagers < ActiveRecord::Migration
  def self.up
    create_table :managers do |t|
      t.string :name
      t.string :nickname
      t.string :email
      t.string :rg
      t.string :cpf
      t.string :phone1
      t.string :phone2
      t.string :cellphone
      t.string :street
      t.string :number
      t.string :complement
      t.string :neibourhood
      t.string :city
      t.string :state
      t.string :ae
      t.text :obs
      t.timestamps
    end
  end

  def self.down
    drop_table :managers
  end
end
