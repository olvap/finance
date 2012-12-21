class IncomesController <  TransactionsController

  def index
    @account = Account.find params[:account_id]
    @transactions = Income.where(account_id: @account.id)
  end

  def new
    @account = Account.find params[:account_id]
    @transaction = Income.new
  end

  def create
    @account = Account.find params[:account_id]
    @transaction = Income.new(params[:income])
    @transaction.account = @account

    if @transaction.save
      redirect_to account_transactions_path(@account)
    else
      render :new
    end
  end
end