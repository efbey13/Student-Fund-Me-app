class IdentityController < ApplicationController
  def add_identity
    auth_hash = request.env['omniauth.auth']
    @identity = Identity.create_with_omniauth(auth_hash)

    @identity.update(user_id: current_user.id)
    redirect_to user_path(current_user)
  end
end
