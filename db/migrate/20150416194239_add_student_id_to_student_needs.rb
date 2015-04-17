class AddStudentIdToStudentNeeds < ActiveRecord::Migration
  def change
    add_column :student_needs, :student_id, :integer
  end
end
