class Manager < ActiveRecord::Base
  has_many :tickets
  has_many :hostings
  has_many :surveys
  
  
  def self.find_by_access_code(access)  
    Manager.first(:conditions => ['access = ?', access])
  end
end
