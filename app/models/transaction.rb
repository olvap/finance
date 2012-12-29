class Transaction < ActiveRecord::Base
  belongs_to :category
  belongs_to :user

  attr_accessible :amount, :concept, :date, :user_id, :category_id

  before_update :update_user
  after_save :change_user
  after_save :save_user

  validates :amount, :numericality => { :greater_than => 0 }
  #validates :category, :presence => true

  private
  def save_user
    user.save
  end

  def change_user
  end

  def update_user
  end

end
