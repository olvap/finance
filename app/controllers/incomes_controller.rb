class IncomesController <  TransactionsController

  def index
    @user = User.find params[:user_id]
    @transactions = Income.where(user_id: @user.id)
  end

  def new
    @user = User.find params[:user_id]
    @transaction = Income.new
  end

  def create
    @user = User.find params[:user_id]
    @transaction = Income.new(params[:income])
    @transaction.user = @user

    if @transaction.save
      redirect_to user_transactions_path(@user)
    else
      render :new
    end
  end
end