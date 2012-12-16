class CreateTransactions < ActiveRecord::Migration
  def change
    create_table :transactions do |t|
      t.float :amount
      t.text :concept
      t.references :category
      t.date :date
      t.references :user
      t.references :account

      t.timestamps
    end
    add_index :transactions, :category_id
    add_index :transactions, :user_id
  end
end
