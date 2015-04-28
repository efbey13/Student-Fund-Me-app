class AddColumnDescriptionToStudentNeeds < ActiveRecord::Migration
  def change
    add_column :student_needs, :description, :text
  end
end
