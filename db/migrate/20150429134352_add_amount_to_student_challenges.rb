class AddAmountToStudentChallenges < ActiveRecord::Migration
  def change
    add_column :student_challenges, :amount, :integer
  end
end
