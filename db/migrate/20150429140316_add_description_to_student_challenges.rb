class AddDescriptionToStudentChallenges < ActiveRecord::Migration
  def change
    add_column :student_challenges, :description, :string
  end
end
