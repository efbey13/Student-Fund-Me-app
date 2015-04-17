class Need < ActiveRecord::Base
  has_many :student_needs
  has_many :sponsors, :class_name => 'StudentNeed', :foreign_key => :sponsor_id
end
