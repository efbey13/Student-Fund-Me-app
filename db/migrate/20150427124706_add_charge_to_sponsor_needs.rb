class AddChargeToSponsorNeeds < ActiveRecord::Migration
  def change
    add_column :sponsor_needs, :charge, :string
  end
end
