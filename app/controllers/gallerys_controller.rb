class GallerysController < ApplicationController
  before_filter :check_access_code
  
  def index
    if !@manager.survey
      redirect_to surveys_path
    end
  end
end
