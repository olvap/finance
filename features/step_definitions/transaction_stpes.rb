Given /^I am on transactions page$/ do
  visit transactions_path
end

Then /^I see an a list of my transactions$/ do
    page.should have_content "Transactions list"
end
