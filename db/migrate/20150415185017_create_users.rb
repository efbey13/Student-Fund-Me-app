class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.profile_photo :string
      t.first_name :string
      t.last_name :string
      t.email :string
      t.skills :string
      t.school_name :string
      t.major :string
      t.gender :string
      t.race :string
      t.location :string
      t.gpa :float
      t.status :string
      t.total_received :float
      t.total_given :float
      t.bio :string
      t.discoverable :boolean
      t.timestamps null: false
    end
  end
end
