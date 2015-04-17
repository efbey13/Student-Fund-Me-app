class AddExpenseToNeeds < ActiveRecord::Migration
  def change
    add_column :needs, :exspense, :integer
  end
end
