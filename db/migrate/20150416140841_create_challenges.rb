class CreateChallenges < ActiveRecord::Migration
  def change
    create_table :challenges do |t|
      t.start_date :date
      t.end_date :date
      t.name
      t.timestamps null: false
    end
  end
end
