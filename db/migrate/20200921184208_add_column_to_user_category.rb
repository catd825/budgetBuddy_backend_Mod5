class AddColumnToUserCategory < ActiveRecord::Migration[6.0]
  def change
    add_column :user_categories, :trans_type, :string
  end
end
