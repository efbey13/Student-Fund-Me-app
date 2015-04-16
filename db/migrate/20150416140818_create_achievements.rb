class CreateAchievements < ActiveRecord::Migration
  def change
    create_table :achievements do |t|
      t.name
      t.timestamps null: false
    end
  end
end
