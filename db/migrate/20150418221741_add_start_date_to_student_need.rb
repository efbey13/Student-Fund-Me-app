class AddStartDateToStudentNeed < ActiveRecord::Migration
  def change
    add_column :student_needs, :start_date, :date
    add_column :student_needs, :end_date, :date
  end
end
