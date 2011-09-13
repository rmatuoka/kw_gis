class CreateSurveys < ActiveRecord::Migration
  def self.up
    create_table :surveys do |t|
      t.integer :agendamento_do_evento
      t.integer :informacoes_sobre_o_evento
      t.integer :hotsite
      t.integer :sistema_de_acesso_de_dados_pessoais_no_hotsite
      t.integer :transporte
      t.integer :suporte_telefonico
      t.integer :acompanhamento_telefonico
      t.integer :reserva_de_quarto
      t.text :dissertativa1
      
      t.integer :jantar
      t.integer :bebidas
      t.integer :musica
      t.integer :dj
      
      t.integer :cafe_da_manha
      t.integer :almoco
      
      t.integer :necessaire
      t.integer :caneca
      t.integer :copo_volt
      t.integer :camiseta
      t.integer :fotografia_com_moldura
      
      t.integer :apresentacao_carol
      t.integer :treinamento_neogrid
      t.integer :entrega_de_trofeus
      t.integer :identidade_visual_do_evento
      t.integer :trofeu
      t.integer :banners_de_auditorio
      
      t.integer :lista_de_contatos_no_verso
      t.integer :numero_de_quarto_no_verso
      t.integer :cores_de_identificacao_de_regiao
      
      t.text :dissertativa2
      t.text :dissertativa3
      t.text :dissertativa4

      t.timestamps
    end
  end

  def self.down
    drop_table :surveys
  end
end
