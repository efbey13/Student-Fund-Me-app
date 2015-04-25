class UsersController < ApplicationController
  def edit
  end

  def delete
  end

  def create
  end

  def update
    @user = User.find(params[:id])
    if @user.update(student_params)
      redirect_to user_path(@user)
    else
      redirect_to student_edit_path(@user)
    end
  end

  def show
    @user  = User.find(params[:id])

    @sponsored_students = @user.sponsored_students

  end

  def status
    @user = User.find(params[:id])
  end

  def status_selected
    @user = User.find(params[:id])
    @user.update(status: status_params[:status])
    if @user.student?
      redirect_to student_edit_path(@user)
    else
      redirect_to user_path(@user)
    end
  end

  def student_edit
    @user = User.find(params[:id])
  end


  def follow
    @user = User.find(params[:id])
    # binding.pry
    UserMailer.follow_email(current_user,@user).deliver_now
    # binding.pry
    # @user = User.create_and_send_email(student_params[:email])
    StudentSponsor.create(:student_id => params[:id], :sponsor_id => current_user.id)
    flash[:notice] = "Following New Student"
    redirect_to user_path(current_user)
  end


  private

  def status_params
    params.require(:user).permit(:status)
  end


  def student_params
    params.require(:user).permit(:email, :school_name, :race, :major, :gpa, :location, :bio, :gender)
    # params.require(:current_user).permit(:follow_id, :current_id, :user_id, :sponsored)
  end




  def user_profile
    @user
  end
end
