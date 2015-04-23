class StudentSponsorsController < ApplicationController

  # def follow
  #   binding.pry
  #   redirect_to user_path(@user)
  # end

  def create

    # binding.pry
    # @sponsored_student = StudentSponsor.create(sponsored_params)
    # redirect_to user_path(@user)
  end


  def show

  end



  private

  def sponsored_params
    param.require(:sponsored).permit(:student_id, :sponsor_id)
  end
end
