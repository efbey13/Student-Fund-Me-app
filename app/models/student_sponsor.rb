class StudentSponsor < ActiveRecord::Base
  belongs_to :student, :class_name => 'User'
  belongs_to :sponsor, :class_name => 'User'

  validates_uniqueness_of :sponsor_id, :scope => [:student_id]
  validates_uniqueness_of :student_id, :scope => [:sponsor_id]
  
end
