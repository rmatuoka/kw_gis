class AccessController < ApplicationController
  layout "access"
  def new
    @manager = Manager.find_by_access_code(params[:access_code])
    if @manager
      #GRAVA SESSION
      session[:access_code] = @manager.access    
      #GRAVA NUMERO DE ACESSOS
      @manager.number_of_access = @manager.number_of_access + 1
      @manager.save
      redirect_to home_index_path
    else
      session[:access_code] = nil
      flash[:msg] = "Código de acesso inválido!"
      redirect_to access_path
    end
  end
  
  def create
    
  end
end
