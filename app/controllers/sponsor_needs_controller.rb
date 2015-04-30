class SponsorNeedsController < ApplicationController
  #
  def back_need
    sponsor_need = SponsorNeed.find(params[:id])
    @student_need = StudentNeed.find(sponsor_need.student_need_id)
    student_sponsor = StudentSponsor.where(student_id: @student_need.student)
    .where(sponsor_id: current_user.id)[0]
    payment = Payments.donate_to_need(
    sponsor_need.amount_given.to_i * 100,
    params[:stripeToken]
    )
    sponsor_need.update(charge: payment['id'])
    if payment['status'] == 'succeeded'
      flash[:notice] = "You have successfully donated to this need."
      student_sponsor.update(sponsored: true)
      @student_need.total_amount += sponsor_need.amount_given
      @student_need.save
      if @student_need.total_amount >= @student_need.need_expense
        @student_need.update(state: 'fulfilled')
      end
      redirect_to student_need_path(@student_need)
    else
      flash[:notice] = "Something went wrong"
      redirect_to make_payment_path(sponsor_need)
    end
  end

  def save_amount
    @student_need = StudentNeed.find(params[:student_need_id])
    @sponsor_need = SponsorNeed.create(sponsor_need_params)
    redirect_to make_payment_path(@sponsor_need)
  end

  def make_payment
    @sponsor_need = SponsorNeed.find(params[:id])
  end

  def total_given
    @user = current_user
  end

  def show_donations
    binding.pry
    @sponsor_needs = SponsorNeed.where(sponsor_id: params[:id]).includes(:student_need)
  end

  private

  def sponsor_need_params
    params.permit(:student_need_id, :amount_given).merge(:sponsor_id => current_user.id)
  end

end
