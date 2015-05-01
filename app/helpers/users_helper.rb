module UsersHelper
  def fullname (fname,lname)
    "#{fname.downcase.capitalize} #{lname.downcase.capitalize}"
  end

  def user_status(current_user)
    "#{current_user.status}".downcase
  end
end
