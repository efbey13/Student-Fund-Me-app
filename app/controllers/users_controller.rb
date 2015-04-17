class UsersController < ApplicationController
  def edit
  end

  def delete
  end

  def create
  end

  def update
  end

  def show
    @user  = User.find(params[:id])
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

  private

  def status_params
    params.require(:user).permit(:status)
  end
end
