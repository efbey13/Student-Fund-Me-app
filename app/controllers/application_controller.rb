class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception
  helper_method :current_user
  layout :determine_layout
# ...








  private
  
  def current_user
    @current_user ||= User.find(session[:user_id]) if session[:user_id]
  end

  def current_user=(user)
    @current_user = user
    session[:user_id] = user.nil? ? nil : user.id
  end


  def signed_in?
    !!current_user
  end


  helper_method :current_user, :signed_in?



  def determine_layout
    if current_user == nil
      'application'
    else
         if current_user.status == 'sponsor'
           "sponsor_profile"
         elsif current_user.status == 'student'
           "student_profile"
         end
    end

  end
end
