class AddStudentIdToStudentNeeds < ActiveRecord::Migration
  def change
    add_reference :student_needs, :student, index: true
    add_foreign_key :student_needs, :students
  end
end
