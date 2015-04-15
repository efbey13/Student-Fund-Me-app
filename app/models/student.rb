class Student < ActiveRecord::Base
  has_many :skills
  has_many :needs
  has_many :student_sponsors
  has_many :sponsors, through: :student_sponsors
end
