class Manager < ActiveRecord::Base
  has_many :ticket
  has_many :hostings
  
  
  def self.find_by_access_code(access)  
    Manager.first(:conditions => ['access = ?', access])
  end
end
