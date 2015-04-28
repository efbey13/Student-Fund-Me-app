class StudentNeedsController < ApplicationController
  def show
    @student_need = StudentNeed.find(params[:id])
  end

  def select_amount
    @student_need = StudentNeed.find(params[:id])
  end
end
