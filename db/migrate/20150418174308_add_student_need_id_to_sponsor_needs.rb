class AddStudentNeedIdToSponsorNeeds < ActiveRecord::Migration
  def change
    add_column :sponsor_needs, :student_need_id, :integer 
  end
end
