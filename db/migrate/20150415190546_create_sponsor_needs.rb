class CreateSponsorNeeds < ActiveRecord::Migration
  def change
    create_table :sponsor_needs do |t|
      t.amount_given :float
      t.timestamps null: false
    end
  end
end
