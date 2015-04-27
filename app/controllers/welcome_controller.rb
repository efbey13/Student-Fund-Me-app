class WelcomeController < ApplicationController
  def home
    if current_user == nil
    else
      redirect_to  user_path(current_user)
    end
  end
end
