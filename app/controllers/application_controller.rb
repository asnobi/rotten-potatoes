class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception
  before_filter :set_current_user
  
  def set_current_user
    if session[:session_token] != nil
      @current_user = User.find_by_session_token(session[:session_token])
    else
      return nil
    end
  end
  
end
