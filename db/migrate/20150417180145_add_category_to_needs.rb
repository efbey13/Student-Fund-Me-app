class AddCategoryToNeeds < ActiveRecord::Migration
  def change
    add_column :needs, :category, :string
  end
end
