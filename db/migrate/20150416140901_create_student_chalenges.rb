class CreateStudentChalenges < ActiveRecord::Migration
  def change
    create_table :student_chalenges do |t|
      t.integer :challenge_id
      t.integer :sponsor_id
      t.integer :student_id 
      t.timestamps null: false
    end
  end
end
