class AddSemsterColumnsToUsers < ActiveRecord::Migration
  def change
    add_column :users, :spring_semester, :datetime
    add_column :users, :fall_semester, :datetime
    remove_column :challenges, :sponsor_id
  end
end
