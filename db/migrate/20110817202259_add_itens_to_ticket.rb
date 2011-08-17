class AddItensToTicket < ActiveRecord::Migration
  def self.up
    add_column :tickets, :cidade, :string
    add_column :tickets, :ida_data, :date
    add_column :tickets, :ida_cidade, :string
    add_column :tickets, :ida_origem, :string
    add_column :tickets, :ida_destino, :string
    add_column :tickets, :ida_voo, :string
    add_column :tickets, :ida_horario_saida, :time
    add_column :tickets, :ida_horario_chegada, :time
    
    add_column :tickets, :vinda_data, :date
    add_column :tickets, :vinda_origem, :string
    add_column :tickets, :vinda_destino, :string
    add_column :tickets, :vinda_voo, :string
    add_column :tickets, :vinda_horario_saida, :time
    add_column :tickets, :vinda_horario_chegada, :time
    
    add_column :tickets, :codigo_reserva, :string
    add_column :tickets, :e_ticket, :string
    add_column :tickets, :obs, :text
  end

  def self.down
    remove_column :tickets, :cidade
    remove_column :tickets, :ida_data
    remove_column :tickets, :ida_cidade
    remove_column :tickets, :ida_origem
    remove_column :tickets, :ida_destino
    remove_column :tickets, :ida_voo
    remove_column :tickets, :ida_horario_saida
    remove_column :tickets, :ida_horario_chegada
    
    remove_column :tickets, :vinda_data
    remove_column :tickets, :vinda_origem
    remove_column :tickets, :vinda_destino
    remove_column :tickets, :vinda_voo
    remove_column :tickets, :vinda_horario_saida
    remove_column :tickets, :vinda_horario_chegada
    
    remove_column :tickets, :codigo_reserva
    remove_column :tickets, :e_ticket
    remove_column :tickets, :obs
  end
end
