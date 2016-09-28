class SessionsController < ApplicationController
  def sess_params
    params.require(:user).permit(:user_id, :email)
  end
  
  def new
  end
  
  
  
  def create
    #@usr = params[:user]
    
    if @usr = User.user_sess(sess_params)
      session[:session_token] = @usr.session_token
      flash[:notice] = "You are logged in  as ID:#{@usr.user_id} "   
      redirect_to movies_path
    else
      flash[:notice] = "Wrong. Email or ID"   
      redirect_to movies_path
    end
    
  end

end
