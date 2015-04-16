class StudentSponsor < ActiveRecord::Base
  belongs_to :student, :class_name => 'User'
  belongs_to :sponsor, :class_name => 'User'
end
