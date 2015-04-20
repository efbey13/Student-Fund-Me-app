class AddTotalAmountToStudentNeeds < ActiveRecord::Migration
  def change
    add_column :student_needs, :total_amount, :integer
  end
end
