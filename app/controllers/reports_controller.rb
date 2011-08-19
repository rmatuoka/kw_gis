class ReportsController < ApplicationController
  layout "admin"
  before_filter :simple_auth
  
  def index
    @managers = Manager.all(:order => "number_of_access DESC")
  end
end
