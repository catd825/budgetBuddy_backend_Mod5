class AddMonthColumnToUserCategory < ActiveRecord::Migration[6.0]
  def change
    add_column :user_categories, :month, :integer
  end
end
