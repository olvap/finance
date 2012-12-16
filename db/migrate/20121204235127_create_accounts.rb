class CreateAccounts < ActiveRecord::Migration
  def change
    create_table :accounts do |t|
      t.float :amount
      t.references :user
      t.string :name

      t.timestamps
    end
    add_index :accounts, :user_id
  end
end
