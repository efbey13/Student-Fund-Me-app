class CreateSponsorNeeds < ActiveRecord::Migration
  def change
    create_table :sponsor_needs do |t|

      t.timestamps null: false
    end
  end
end
