class HostingsController < ApplicationController
  before_filter :load_manager
  layout "admin"
  
  def index
    @hostings = @manager.hostings.all
  end

  def show
    @hosting = @manager.hostings.find(params[:id])
  end

  def new
    @hosting = @manager.hostings.build
  end

  def create
    @hosting = @manager.hostings.new(params[:hosting])
    if @hosting.save
      redirect_to manager_hosting_path(@manager, @hosting), :notice => "Successfully created hosting."
    else
      render :action => 'new'
    end
  end

  def edit
    @hosting = @manager.hostings.find(params[:id])
  end

  def update
    @hosting = @manager.hostings.find(params[:id])
    if @hosting.update_attributes(params[:hosting])
      redirect_to manager_hosting_path(@manager, @hosting), :notice  => "Successfully updated hosting."
    else
      render :action => 'edit'
    end
  end

  def destroy
    @hosting = @manager.hostings.find(params[:id])
    @hosting.destroy
    redirect_to manager_hostings_path(@manager), :notice => "Successfully destroyed hosting."
  end
  
  def load_manager
    @manager = Manager.find(params[:manager_id])
  end
end
