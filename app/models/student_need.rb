class StudentNeed < ActiveRecord::Base
  belongs_to :student , :class_name => 'User'
  # belongs_to :student, :class_name => 'StudentSponsor', :foreign_key => :student_id
  belongs_to :needs
end
