class Transaction < ActiveRecord::Base
  belongs_to :category
  belongs_to :user
  belongs_to :account

  attr_accessor :old_value

  attr_accessible :amount, :concept, :date, :user_id, :category_id, :account_id

  before_update :update_account
  after_save :change_account
  after_save :save_account

  validates :amount, :numericality => { :greater_than => 0 }

  private
  def save_account
    account.save
  end

  def change_account
  end

  def update_account
  end

end
