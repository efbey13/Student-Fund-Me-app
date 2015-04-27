class StudentNeed < ActiveRecord::Base
  belongs_to :student , class_name: 'User', :foreign_key => :user_id
  belongs_to :need
  mount_uploader :proof, ProofUploader

end
