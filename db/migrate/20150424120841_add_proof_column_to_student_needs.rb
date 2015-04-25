class AddProofColumnToStudentNeeds < ActiveRecord::Migration
  def change
    add_column :student_needs, :proof, :string
  end
end
