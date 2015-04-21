class CreateSearches < ActiveRecord::Migration
  def change
    create_table :searches do |t|
      t.string :profile_photo
      t.string :first_name
      t.string :last_name
      t.string :email
      t.string :school_name
      t.string :major
      t.string :gender
      t.string :race
      t.string :location
      t.float :gpa
      t.string :status
      t.float :total_received
      t.float :total_given
      t.string :bio
      t.boolean :discoverable

      t.timestamps null: false
    end
  end
end
