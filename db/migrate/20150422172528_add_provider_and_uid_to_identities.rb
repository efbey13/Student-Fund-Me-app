class AddProviderAndUidToIdentities < ActiveRecord::Migration
  def change
    add_column :identities, :uid, :string
    add_column :identities, :provider, :string
  end
end
