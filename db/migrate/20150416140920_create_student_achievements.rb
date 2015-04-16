class CreateStudentAchievements < ActiveRecord::Migration
  def change
    create_table :student_achievements do |t|
      t.status :string
      t.student_id :integer
      t.achievement_id :integer
      t.timestamps null: false
    end
  end
end
