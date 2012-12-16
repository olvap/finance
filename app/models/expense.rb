class Expense < Transaction

  def update_account
    account.amount -= amount
    account.save
  end

end
