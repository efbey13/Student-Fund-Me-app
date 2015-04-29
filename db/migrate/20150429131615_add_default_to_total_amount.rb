class AddDefaultToTotalAmount < ActiveRecord::Migration
  def change
    change_column_default :student_needs, :total_amount, 0
  end
end
