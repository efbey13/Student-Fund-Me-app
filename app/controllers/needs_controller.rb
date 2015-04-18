class NeedsController < ApplicationController
  def edit
  end

  def delete
  end

  def create
    @need = Need.find_or_create_by(title: need_params[:title])
    @user = User.find(params[:user_id])
    @student_need = @user.student_needs.build(need_id: @need.id)
    binding.pry
  end

  def update
  end

  def new
    @need = Need.new
    user = User.find(params[:user_id])
    @student_need = user.student_needs.build
  end

  private
  def need_params
    params.require(:need).permit(:title, :end_date, :category)
  end
end
