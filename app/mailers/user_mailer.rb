class UserMailer < ApplicationMailer

  def welcome_email(user)

    @user = user
    @url  = "http://localhost:3000/auth/splitwise"
    mail(to: @user.email, subject: 'You have been to invited to a SuSu pool')
  end

  def follow_email(sender, user)
      # binding.pry
    @sender = sender
    @user = user
    mail(to: @user.email, subject: 'You have a Follower')
  end

  def challenged_email(sender, user)
    @sender = sender
    @user = user
    mail(to: @user.email, subject: 'you have a new challenge')
  end

end
