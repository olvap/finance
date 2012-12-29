class Income < Transaction

  private
  def change_user
    self.user.amount += amount
  end

  def update_user
    self.user.amount -= amount_was
  end
end
