class TicketsController < ApplicationController
  before_filter :load_manager
  layout "admin"
  def index
    @tickets = @manager.tickets.all
  end

  def show
    @ticket = @manager.tickets.find(params[:id])
  end

  def new
    @ticket = @manager.tickets.build
  end

  def create
    @ticket = @manager.tickets.new(params[:ticket])
    if @ticket.save
      redirect_to manager_ticket_path(@manager, @ticket), :notice => "Successfully created ticket."
    else
      render :action => 'new'
    end
  end

  def edit
    @ticket = @manager.tickets.find(params[:id])
  end

  def update
    @ticket = @manager.tickets.find(params[:id])
    if @ticket.update_attributes(params[:ticket])
      redirect_to manager_ticket_path(@manager, @ticket), :notice  => "Successfully updated ticket."
    else
      render :action => 'edit'
    end
  end

  def destroy
    @ticket = @manager.tickets.find(params[:id])
    @ticket.destroy
    redirect_to manager_tickets_path(@manager), :notice => "Successfully destroyed ticket."
  end
  
  def load_manager
    @manager = Manager.find(params[:manager_id])
  end
end
