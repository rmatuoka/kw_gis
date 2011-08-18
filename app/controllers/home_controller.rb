class HomeController < ApplicationController
  before_filter :check_access_code
  def index
    #@quarto = Hosting.first(:conditions => ['manager_id = ', @manager])
  end
  
  def print
    @manager.print = @manager.print + 1
    if @manager.save
      redirect_to @manager.tickets.first.passagem.url
    else
      flash[:msg] = "Ocorreu um erro na exibição de sua passagem,por favor, entre em contato com nosso suporte <a href='mailto:suporte@gestoresdeinformacao.com.br'>suporte@gestoresdeinformacao.com.br</a>"
      redirect_to access_path
    end
  end
end
