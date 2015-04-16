class CreateStudentSponsors < ActiveRecord::Migration
  def change
    create_table :student_sponsors do |t|
      t.integer :student_id
      t.integer :sponsor_id
      t.boolean :sponsored 
      t.timestamps null: false
    end
  end
end
