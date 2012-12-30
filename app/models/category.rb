class Category < ActiveRecord::Base
  attr_accessible :name, :user_id

  belongs_to :user

  def to_s
    name
  end

end
