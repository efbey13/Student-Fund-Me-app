class AddBoroughIdToUsers < ActiveRecord::Migration
  def change
    add_reference :users, :borough, index: true
    add_foreign_key :users, :boroughs
  end
end
