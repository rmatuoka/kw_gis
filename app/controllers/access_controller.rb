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
      
      if !@manager.survey
        redirect_to surveys_path
      else
        redirect_to gallerys_path
      end
      
    else
      session[:access_code] = nil
      flash[:msg] = "Código de acesso inválido! Caso não tenha recebido seu código, entre em contato com nosso suporte <a href='mailto:suporte@gestoresdeinformacao.com.br'>suporte@gestoresdeinformacao.com.br</a>"
      redirect_to access_path
    end
  end
  
  def create
    
  end
end
