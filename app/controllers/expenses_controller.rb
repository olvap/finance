class ExpensesController <  TransactionsController

  def index
    @user = User.find params[:user_id]
    @transactions = Expense.where(user_id: @user.id)
  end

  def new
    @user = User.find params[:user_id]
    @transaction = Expense.new
  end

  def create
    @user = User.find params[:user_id]
    @transaction = Expense.new(params[:expense])
    @transaction.user = @user

    if @transaction.save
      redirect_to user_transactions_path(@user)
    else
      render :new
    end
  end
end
