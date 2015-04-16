class CreateStudentSponsors < ActiveRecord::Migration
  def change
    create_table :student_sponsors do |t|
      t.student_id :integer
      t.sponsor_id :integer
      t.sponsored :boolean
      t.timestamps null: false
    end
  end
end
