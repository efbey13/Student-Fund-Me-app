class AddSponsorIdToSponsorNeed < ActiveRecord::Migration
  def change
    add_column :sponsor_needs, :sponsor_id, :integer
  end
end
