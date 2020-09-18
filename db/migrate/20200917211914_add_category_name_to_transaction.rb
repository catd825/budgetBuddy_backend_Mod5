class AddCategoryNameToTransaction < ActiveRecord::Migration[6.0]
  def change
    add_column :transactions, :category_name, :string
  end
end
