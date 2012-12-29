class TransactionsController <  InheritedResources::Base
  actions :all, :except => [ :new, :create ]

  belongs_to :user
  before_filter :authenticate_user!
end
