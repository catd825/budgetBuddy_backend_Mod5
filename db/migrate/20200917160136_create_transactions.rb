class CreateTransactions < ActiveRecord::Migration[6.0]
  def change
    create_table :transactions do |t|
      t.references :category, null: false, foreign_key: true
      t.references :bank_account, null: false, foreign_key: true
      t.date :date
      t.float :amount
      t.string :trans_type
      t.string :description

      t.timestamps
    end
  end
end
