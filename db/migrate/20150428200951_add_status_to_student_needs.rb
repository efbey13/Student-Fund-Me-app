class AddStatusToStudentNeeds < ActiveRecord::Migration
  def change
    add_column :student_needs, :state, :string, default: "pending"
  end
end
