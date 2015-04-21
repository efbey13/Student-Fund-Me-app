class SponsorNeedsController < ApplicationController

  def back_need
    binding.pry
    SponsorNeed.create(student_need_id: @student_need.id)
    redirect_to student_need_path(@student_need)
  end
end
