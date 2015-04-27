class AddAcceptedColumnToStudentChallenges < ActiveRecord::Migration
  def change
    add_column :student_challenges, :accepted, :boolean
  end
end
