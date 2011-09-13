class Survey < ActiveRecord::Base
  belongs_to :manager
  
  validates_presence_of :agendamento_do_evento
  validates_presence_of :informacoes_sobre_o_evento
  validates_presence_of :hotsite
  validates_presence_of :sistema_de_acesso_de_dados_pessoais_no_hotsite
  validates_presence_of :transporte
  validates_presence_of :suporte_telefonico
  validates_presence_of :acompanhamento_telefonico
  validates_presence_of :reserva_de_quarto
  validates_presence_of :dissertativa1
  
  validates_presence_of :jantar
  validates_presence_of :bebidas
  validates_presence_of :musica
  validates_presence_of :dj
  
  validates_presence_of :cafe_da_manha
  validates_presence_of :almoco
  
  validates_presence_of :necessaire
  validates_presence_of :caneca
  validates_presence_of :copo_volt
  validates_presence_of :camiseta
  validates_presence_of :fotografia_com_moldura
  
  validates_presence_of :apresentacao_carol
  validates_presence_of :treinamento_neogrid
  validates_presence_of :entrega_de_trofeus
  validates_presence_of :identidade_visual_do_evento
  validates_presence_of :trofeu
  validates_presence_of :banners_de_auditorio
  
  validates_presence_of :lista_de_contatos_no_verso
  validates_presence_of :numero_de_quarto_no_verso
  validates_presence_of :cores_de_identificacao_de_regiao
  
  validates_presence_of :dissertativa2
  validates_presence_of :dissertativa3
  validates_presence_of :dissertativa4
end
