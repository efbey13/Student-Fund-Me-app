class RenameStudentChalengesToStudentChallenges < ActiveRecord::Migration
  def change
    rename_table :student_chalenges, :student_challenges
  end
end
