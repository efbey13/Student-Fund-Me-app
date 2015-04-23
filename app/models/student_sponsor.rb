class StudentSponsor < ActiveRecord::Base
  belongs_to :student, :class_name => 'User'
  belongs_to :sponsor, :class_name => 'User'

  validates_uniqueness_of :sponsor_id, :scope => [:student_id]
  validates_uniqueness_of :student_id, :scope => [:sponsor_id]
  validate :cannot_follow_self

  def cannot_follow_self
    if sponsor_id == student_id
      errors.add(:student_id, "can't be the same as sponsor id")
    end
  end

  

end
