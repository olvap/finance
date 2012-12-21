class AddIndex < ActiveRecord::Migration
  def up
    add_index :categories, :user_id
    add_index :transactions, :account_id
  end

  def down
  end
end
