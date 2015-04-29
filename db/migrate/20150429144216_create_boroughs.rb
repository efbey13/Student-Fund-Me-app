class CreateBoroughs < ActiveRecord::Migration
  def change
    create_table :boroughs do |t|

      t.timestamps null: false
    end
  end
end
