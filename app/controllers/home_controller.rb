class HomeController < ApplicationController
  before_filter :authenticate_user!

  def index
    @transactions = current_user.transactions.limit(5)
  end
end
