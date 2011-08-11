class ApplicationController < ActionController::Base
  protect_from_forgery
  
  #Authlogic
  helper_method :current_user
  private

  def current_user_session
  return @current_user_session if defined?(@current_user_session)
  @current_user_session = UserSession.find
  end

  def current_user
  return @current_user if defined?(@current_user)
  @current_user = current_user_session && current_user_session.record
  end
  
  def check_access_code
    if !session[:access_code]
      flash[:msg] = "Sua sessão expirou!"
      redirect_to access_path 
    else
      @manager = Manager.find_by_access_code(session[:access_code])
    end
  end
  
  def simple_auth
    if !current_user
      redirect_to login_path
    end
  end
end
