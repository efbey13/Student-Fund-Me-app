class SponsorNeedsController < ApplicationController
  #
  def back_need
    sponsor_need = SponsorNeed.find(params[:id])
    @student_need = StudentNeed.find(sponsor_need.student_need_id)
    payment = Payments.donate_to_need(
    sponsor_need.amount_given.to_i * 100,
    params[:stripeToken]
    )
    sponsor_need.charge = payment['id']
    if payment['status'] == 'succeeded'
      flash[:notice] = "You have successfully donated to this need."
      redirect_to student_need_path(@student_need)
    else
      flash[:notice] = "Payment failed"
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

  private
  
  def sponsor_need_params
    params.permit(:student_need_id, :amount_given).merge(:sponsor_id => current_user.id)
  end

end
