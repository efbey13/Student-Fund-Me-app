class StudentNeedsController < ApplicationController
  def show
    @student_need = StudentNeed.find(params[:id])
  end

  def back_need
    binding.pry
  end
end
