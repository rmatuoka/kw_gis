class Ticket < ActiveRecord::Base
  belongs_to :manager
  
  #PAPERCLIP
  has_attached_file :passagem
end
