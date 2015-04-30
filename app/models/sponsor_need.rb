class SponsorNeed < ActiveRecord::Base
  belongs_to :sponsor
  belongs_to :student_need

  def total_given(user)
    SponsorNeed.where(sponsor_id: user.id).sum(:amount_given)
  end
end
