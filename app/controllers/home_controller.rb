class HomeController < ApplicationController
  before_filter :check_access_code
  def index
    #@quarto = Hosting.first(:conditions => ['manager_id = ', @manager])
  end
end
