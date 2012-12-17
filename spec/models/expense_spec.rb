require 'spec_helper'

describe Expense do

  before(:each) do
    @user = FactoryGirl.create :user
    @account = FactoryGirl.create :account, user: @user
  end

  it "should decress the amount in the account when the transaction is an expense" do
    cash = @account.amount
    @expense = FactoryGirl.create :expense, account: @account, amount: 100.01
    @account.amount.should eq(cash - 100.01)
  end

  it "should modify the amount of the account correctly when update the transaction" do
    cash = @account.amount
    @expense = FactoryGirl.create :expense, account: @account, amount: 100.01
    @expense.amount = 200
    @expense.save
    @account.amount.should eq(cash - 200)
  end

end


