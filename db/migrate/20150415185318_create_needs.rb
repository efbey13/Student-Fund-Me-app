class CreateNeeds < ActiveRecord::Migration
  def change
    create_table :needs do |t|
      t.string :title
      t.date :start_date
      t.date :end_date
      t.timestamps null: false
    end
  end
end
