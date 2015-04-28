class GetRidOfExpenseInNeeds < ActiveRecord::Migration
  def change
    remove_column :needs, :exspense, :integer
  end
end
