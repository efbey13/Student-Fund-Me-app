class CreateStudentChalenges < ActiveRecord::Migration
  def change
    create_table :student_chalenges do |t|
      t.challenge_id :integer
      t.sponsor_id :integer
      t.student_id :integer
      t.timestamps null: false
    end
  end
end
