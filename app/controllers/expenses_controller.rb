class ExpensesController <  TransactionsController

  def index
    @account = Account.find params[:account_id]
    @transactions = Income.where(account_id: @account.id)
  end

  def new
    @account = Account.find params[:account_id]
    @transaction = Expense.new
  end
end
