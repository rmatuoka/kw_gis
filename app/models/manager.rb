class Manager < ActiveRecord::Base
  has_many :ticket
  #PAPERCLIP
  #has_attached_file :passagem
  
  def self.find_by_access_code(access)  
    Manager.first(:conditions => ['access = ?', access])
  end
end
