class Account < ActiveRecord::Base
  belongs_to :user
  has_many :transactions, :dependent => :destroy
  attr_accessible :amount, :name, :user_id

  validates :amount, :numericality => { :greater_than_or_equal_to => 0 }, on: :create
end
