class CreateStudentNeeds < ActiveRecord::Migration
  def change
    create_table :student_needs do |t|
      t.need_expense :float
      t.need_met :boolean
      t.timestamps null: false
    end
  end
end
