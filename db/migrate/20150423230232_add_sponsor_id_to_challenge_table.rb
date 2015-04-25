class AddSponsorIdToChallengeTable < ActiveRecord::Migration
  def change
    add_column :challenges, :sponsor_id, :integer
  end
end
