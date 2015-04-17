class SessionsController < ApplicationController
  def create
    auth_hash = request.env['omniauth.auth']
    user = User.find_by_provider_and_uid(auth_hash["provider"], auth_hash["uid"]) || User.create_with_omniauth(auth_hash)
    session[:user_id] = user.id
    if current_user.status.nil?
      redirect_to select_status_path(user)
    else
      redirect_to user_path(user), :notice => "Signed In!"
    end

  end

  def destroy
    session[:user_id] = nil
    redirect_to root_url, :notice => "Signed out!"
  end
end
