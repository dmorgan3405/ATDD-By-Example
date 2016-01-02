Given /^I am on the puppy adoption site$/ do
  visit_page(HomePage)
end

When(/^I view the details of the first puppy$/) do
  on_page(HomePage).view_details
end

When(/^I choose to adopt the puppy$/) do
  on_page(DetailsPage).adopt_me
  on_page(ShoppingCartPage).complete_adoption
end

When(/^I enter my name "([^"]*)"$/) do |name|
  on_page(CheckoutPage).name = name
end

When(/^I enter my address "([^"]*)"$/) do |address|
  on_page(CheckoutPage).address = address
end

When(/^I enter my email "([^"]*)"$/) do |email|
  on_page(CheckoutPage).email = email
end

When(/^I choose to pay by "([^"]*)"$/) do |payment_method|
  on_page(CheckoutPage).payment_method= payment_method
end

When(/^I choose to place my order$/) do
  on_page(CheckoutPage).place_order
end

Then(/^I should see "([^"]*)"$/) do |expected|
  @current_page.text.should include expected
end

When(/^I checkout using:$/) do |table|
  on_page(CheckoutPage).checkout(table.hashes.first)
end
