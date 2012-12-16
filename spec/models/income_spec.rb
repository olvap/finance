require 'spec_helper'

describe Income do

  before(:each) do
    @user = FactoryGirl.create :user
    @account = FactoryGirl.create :account, user: @user
  end

  it "should incress the amount in the account when the transaction is an income" do
    cash = @account.amount
    @income = FactoryGirl.create :income, account: @account, amount: 100.01
    @account.amount.should eq(cash + 100.01)
  end

end
