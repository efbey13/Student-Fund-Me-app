class SessionsController < ApplicationController
  
  def create
    auth_hash = request.env['omniauth.auth']

    @identity = Identity.find_with_omniauth(auth_hash)

    if @identity.nil?
      # If no identity was found, create a brand new one here
      @identity = Identity.create_with_omniauth(auth_hash)
    end
    # binding.pry

    if signed_in?
      if @identity.user == current_user
        redirect_to root_url notice: "Already linked that account!"
      else
        if current_user.status.nil?
          redirect_to select_status_path(user)
        else
          redirect_to user_path(user), :notice => "Signed In!"
        end
      end
    else
      binding.pry
      user = User.find_by_provider_and_uid(auth_hash["provider"], auth_hash["uid"]) || User.create_with_omniauth(auth_hash)
       @identity.update(user_id: user.id)
       session[:user_id] = user.id
    end

  end

  def destroy
    session[:user_id] = nil
    redirect_to root_url, :notice => "Signed out!"
  end

end
