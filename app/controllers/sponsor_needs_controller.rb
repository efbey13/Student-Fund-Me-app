class SponsorNeedsController < ApplicationController

  def back_need
    binding.pry
    @student = User.find(params[:id])
    StudentSponsor.create(student_id: @student, sponsor_id: current_user.id, sponsored: true)
    SponsorNeed.create(student_need_id: @student_need.id)
    redirect_to student_need_path(@student_need)
  end
end
