class AddNeedIdToStudentNeeds < ActiveRecord::Migration
  def change
    add_column :student_needs, :need_id, :integer
  end
end
