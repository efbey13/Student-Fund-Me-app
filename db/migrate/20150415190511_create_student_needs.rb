class CreateStudentNeeds < ActiveRecord::Migration
  def change
    create_table :student_needs do |t|
      t.float :need_expense 
      t.boolean :need_met
      t.timestamps null: false
    end
  end
end
