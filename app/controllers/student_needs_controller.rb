class StudentNeedsController < ApplicationController
  def show
    @student_need = StudentNeed.find(params[:id])
  end

  def select_amount
    @student_need = StudentNeed.find(params[:id])
  end

  def edit
    @student_need = StudentNeed.find(params[:id])
    # @user = User.find(params[:user_id])
    # @student_need = @user.student_needs.update(need_id: @need.id, start_date: Time.now,end_date: need_params[:end_date]) if student_need.end_date.present?
    
    binding.pry
    # @need = Need.find_by(title: need_params[:title])
    # @user = User.find(params[:user_id])
    # @student_need = @user.student_needs.update(need_id: @need.id, start_date: Time.now,end_date: need_params[:end_date]) if student_need.end_date.present?
    # @student_need.proof = student_need[:proof] if student_need.proof.present?
  end

end
