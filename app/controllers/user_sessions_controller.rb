class UserSessionsController < ApplicationController
  layout "access"
  def new
    @user_session = UserSession.new
  end

  def create
    @user_session = UserSession.new(params[:user_session])
    if @user_session.save
      redirect_to managers_path
    else
      render :action => 'new'
    end
  end
  
  def destroy
    @user_session = UserSession.find
    @user_session.destroy
    redirect_to root_url, :notice => "Sessão finalizada com sucesso!"
  end
end
