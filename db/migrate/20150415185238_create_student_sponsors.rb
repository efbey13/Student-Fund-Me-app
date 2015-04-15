class CreateStudentSponsors < ActiveRecord::Migration
  def change
    create_table :student_sponsors do |t|

      t.timestamps null: false
    end
  end
end
