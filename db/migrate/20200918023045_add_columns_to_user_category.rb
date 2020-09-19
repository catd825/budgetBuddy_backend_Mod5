class AddColumnsToUserCategory < ActiveRecord::Migration[6.0]
  def change
    add_column :user_categories, :category_name, :string
    add_column :user_categories, :user_name, :string
  end
end
