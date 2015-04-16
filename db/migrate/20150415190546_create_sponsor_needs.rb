class CreateSponsorNeeds < ActiveRecord::Migration
  def change
    create_table :sponsor_needs do |t|
      t.float :amount_given
      t.timestamps null: false
    end
  end
end
