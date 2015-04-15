class CreateStudentNeeds < ActiveRecord::Migration
  def change
    create_table :student_needs do |t|

      t.timestamps null: false
    end
  end
end
