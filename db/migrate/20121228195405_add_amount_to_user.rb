class AddAmountToUser < ActiveRecord::Migration
  def change
    add_column :users, :amount, :float
  end
end
