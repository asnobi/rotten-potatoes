class UsersController < ApplicationController
  def new
  end
#  def user_params
#    params.require(:user).permit(:user, :id, :email, :created_at, :updated_at)
#  end  

  
  def login
    
  end
  
  def create
    
    @user = User.test(user_params)
    #@user.save
    #redirect_to new_user_path
    #@user.save
    if (User.exists?(user_id: @user.user_id)) || (@user.user_id == "")
      redirect_to new_user_path
      flash[:notice] = "This User ID is already exists!!"
    else
      @user.save
      redirect_to movies_path
      flash[:notice] = "Welcome #{@user.user_id}. Your account has been created"
    end

  end  
  
  
  
  private
  def user_params
    params.require(:user).permit(:user_id, :email, :session_token)
  end
  
end
