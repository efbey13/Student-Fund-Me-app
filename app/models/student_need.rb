class StudentNeed < ActiveRecord::Base
  belongs_to :student , class_name: 'User', :foreign_key => :user_id
  belongs_to :need
  mount_uploader :proof, ProofUploader

  # def proof=(val)
  #   if !val.is_a?(String) && valid?
  #     proof_will_change!
  #     super
  #   end
  # end
end
