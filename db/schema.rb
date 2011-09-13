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

ActiveRecord::Schema.define(:version => 20110912210713) do

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
    t.integer  "print",            :default => 0
    t.text     "warning"
    t.boolean  "survey",           :default => false
  end

  create_table "surveys", :force => true do |t|
    t.integer  "agendamento_do_evento"
    t.integer  "informacoes_sobre_o_evento"
    t.integer  "hotsite"
    t.integer  "sistema_de_acesso_de_dados_pessoais_no_hotsite"
    t.integer  "transporte"
    t.integer  "suporte_telefonico"
    t.integer  "acompanhamento_telefonico"
    t.integer  "reserva_de_quarto"
    t.text     "dissertativa1"
    t.integer  "jantar"
    t.integer  "bebidas"
    t.integer  "musica"
    t.integer  "dj"
    t.integer  "cafe_da_manha"
    t.integer  "almoco"
    t.integer  "necessaire"
    t.integer  "caneca"
    t.integer  "copo_volt"
    t.integer  "camiseta"
    t.integer  "fotografia_com_moldura"
    t.integer  "apresentacao_carol"
    t.integer  "treinamento_neogrid"
    t.integer  "entrega_de_trofeus"
    t.integer  "identidade_visual_do_evento"
    t.integer  "trofeu"
    t.integer  "banners_de_auditorio"
    t.integer  "lista_de_contatos_no_verso"
    t.integer  "numero_de_quarto_no_verso"
    t.integer  "cores_de_identificacao_de_regiao"
    t.text     "dissertativa2"
    t.text     "dissertativa3"
    t.text     "dissertativa4"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "manager_id"
  end

  create_table "tickets", :force => true do |t|
    t.string   "voo"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "manager_id"
    t.string   "cidade"
    t.date     "ida_data"
    t.string   "ida_cidade"
    t.string   "ida_origem"
    t.string   "ida_destino"
    t.string   "ida_voo"
    t.time     "ida_horario_saida"
    t.time     "ida_horario_chegada"
    t.date     "vinda_data"
    t.string   "vinda_origem"
    t.string   "vinda_destino"
    t.string   "vinda_voo"
    t.time     "vinda_horario_saida"
    t.time     "vinda_horario_chegada"
    t.string   "codigo_reserva"
    t.string   "e_ticket"
    t.text     "obs"
    t.string   "passagem_file_name"
    t.string   "passagem_content_type"
    t.integer  "passagem_file_size"
    t.datetime "passagem_updated_at"
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
