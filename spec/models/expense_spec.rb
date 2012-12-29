require 'spec_helper'

describe Expense do

  before(:each) do
    @user = FactoryGirl.create :user
  end

  it "should decress the amount in the account when the transaction is an expense" do
    cash = @user.amount
    @expense = FactoryGirl.create :expense, user: @user, amount: 100.01
    @user.amount.should eq(cash - 100.01)
  end

  it "should modify the amount of the account correctly when update the transaction" do
    cash = @user.amount
    @expense = FactoryGirl.create :expense, user: @user, amount: 100.01
    @expense.amount = 200
    @expense.save
    @user.amount.should eq(cash - 200)
  end

end


