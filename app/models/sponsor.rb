class Sponsor < ActiveRecord::Base
  has_many :needs
  has_many :student_sponsors
  has_many :students, through: :student_sponsors
end
