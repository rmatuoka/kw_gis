# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# Note that this schema.rb definition is the authoritative source for your
# database schema. If you need to create the application database on another
# system, you should be using db:schema:load, not running all the migrations
# from scratch. The latter is a flawed and unsustainable approach (the more migrations
# you'll amass, the slower it'll run and the greater likelihood for issues).
#
# It's strongly recommended to check this file into your version control system.

ActiveRecord::Schema.define(:version => 20110812183007) do

  create_table "hostings", :force => true do |t|
    t.integer  "manager_id"
    t.string   "bedroom"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "managers", :force => true do |t|
    t.string   "name"
    t.string   "nickname"
    t.string   "email"
    t.string   "rg"
    t.string   "cpf"
    t.string   "phone1"
    t.string   "phone2"
    t.string   "cellphone"
    t.string   "street"
    t.string   "number"
    t.string   "complement"
    t.string   "neibourhood"
    t.string   "city"
    t.string   "state"
    t.string   "ae"
    t.text     "obs"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "access"
    t.integer  "number_of_access", :default => 0
  end

  create_table "tickets", :force => true do |t|
    t.string   "voo"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "manager_id"
  end

  create_table "users", :force => true do |t|
    t.string   "username"
    t.string   "email"
    t.string   "crypted_password"
    t.string   "password_salt"
    t.string   "persistence_token"
    t.integer  "login_count"
    t.string   "current_login_ip"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end
