class StudentNeed < ActiveRecord::Base
  belongs_to :students , :class_name => 'User'
  belongs_to :needs
end
