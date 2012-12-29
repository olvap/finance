require 'spec_helper'

describe Income do

  before(:each) do
    @user = FactoryGirl.create :user
  end

  it "should incress the amount in the account when the transaction is an income" do
    cash = @user.amount
    @income = FactoryGirl.create :income, user: @user, amount: 100.01
    @user.amount.should eq(cash + 100.01)
  end

  it "should modify the amount of the account correctly when update the transaction" do
    cash = @user.amount
    @income = FactoryGirl.create :income, user: @user, amount: 100.01
    @income.amount = 200
    @income.save
    @user.amount.should eq(cash + 200)
  end
end
