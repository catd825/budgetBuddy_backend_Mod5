class AddMonthColumnToTransaction < ActiveRecord::Migration[6.0]
  def change
    add_column :transactions, :month, :integer
  end
end
