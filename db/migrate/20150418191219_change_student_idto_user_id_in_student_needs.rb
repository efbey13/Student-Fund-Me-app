class ChangeStudentIdtoUserIdInStudentNeeds < ActiveRecord::Migration
  def change
    rename_column :student_needs, :student_id, :user_id
  end
end
