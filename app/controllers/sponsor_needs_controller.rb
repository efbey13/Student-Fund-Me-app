class SponsorNeedsController < ApplicationController

  def back_need
    binding.pry
    @student_need = StudentNeed.find(params[:student_need_id])
    @student = @student_need.student
    StudentSponsor.create(student_id: @student.id, sponsor_id: current_user.id, sponsored: true)
    SponsorNeed.create(student_need_id: @student_need.id)
    Payments.donate_to_need() #if payment is successful decrement payment amount from student_need
    redirect_to student_need_path(@student_need)
  end
end
