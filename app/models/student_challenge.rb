class StudentChallenge < ActiveRecord::Base
  belongs_to :student ,:class_name => 'User'
  belongs_to :sponsor, :class_name => 'User'
  belongs_to :challenges

  validates_uniqueness_of :challenge_id, :scope => [:student_id, :sponsor_id]

end
