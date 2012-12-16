class Account < ActiveRecord::Base
  belongs_to :user
  has_many :transactions
  attr_accessible :amount, :name, :user_id

  validate :amount, :numericality => true
end
