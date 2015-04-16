class User < ActiveRecord::Base
  has_many :skills
  has_many :needs
  has_many :student_sponsors
  has_many :sponsors, :class_name => 'StudentSponsor', :foreign_key => :sponsor_id
  has_many :students, :class_name => 'StudentSponsor', :foreign_key => :student_id
end
