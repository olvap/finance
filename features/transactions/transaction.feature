Feature: Transactions
  In order To know hove many money a user have
  he should be able manage all the incoming and expensives

  Background:
    Given I am logged in

    @wip
    Scenario: User should see all his transactions
      Given I am on transactions page
      Then I see an a list of my transactions
