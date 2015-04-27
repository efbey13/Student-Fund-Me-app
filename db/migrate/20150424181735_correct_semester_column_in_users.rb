class CorrectSemesterColumnInUsers < ActiveRecord::Migration
  def change
    remove_column :users, :spring_semester, :datetime
    remove_column :users, :fall_semester, :datetime
    add_column :users, :spring_semester, :date
    add_column :users, :fall_semester, :date
  end
end
