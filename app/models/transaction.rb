class Transaction < ActiveRecord::Base
  belongs_to :category
  belongs_to :user
  belongs_to :account

  attr_accessible :amount, :concept, :date, :user_id, :category_id, :account_id

  before_save :update_account

  def update_account
  end

end
