class RemoveColumnFromUserCategory < ActiveRecord::Migration[6.0]
  def change
    remove_column :user_categories, :date
  end
end
