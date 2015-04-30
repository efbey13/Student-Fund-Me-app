class Challenge < ActiveRecord::Base
    has_many :student_challenges
    belongs_to :users
end
c
