class SessionsController < ApplicationController
  def create
    if user = User.authenticate_with_credentials(params[:email], params[:password])
      redirect_to root_path
    else
      redirect_to new_login_path
    end
  end
  def destroy
    session.delete(:user_id)
    redirect_to new_login_path
  end

end