class Income < Transaction

  private
  def change_account
    self.account.amount += amount
  end

  def update_account
    self.account.amount -= amount_was
  end
end
