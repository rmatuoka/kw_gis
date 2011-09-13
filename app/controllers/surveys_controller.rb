class SurveysController < ApplicationController
  before_filter :check_access_code
  
  def index
    redirect_to new_survey_path
  end
  
  def new
    @survey = @manager.surveys.build
  end
  
  def create
    @survey = @manager.surveys.new(params[:survey])
    if @survey.save
      @manager.survey = true
      @manager.save
      
      redirect_to gallerys_path 
    else
      render :action => 'new'
    end
  end
end
