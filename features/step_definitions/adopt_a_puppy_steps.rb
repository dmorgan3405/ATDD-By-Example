Given /^I am on the puppy adoption site$/ do
  visit_page(HomePage)
end

When(/^I view the details of the first puppy$/) do
  on_page(HomePage).view_details_for(1)
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

When /^I checkout$/ do
  on_page(CheckoutPage).checkout
end

When(/^I checkout using a payment method of "([^"]*)"$/) do |payment_method|
  on_page(CheckoutPage).checkout({'payment_method' => payment_method})
end

When(/^I adopt puppy (\d+)$/) do |puppy_index|
  on_page(HomePage).view_details_for(puppy_index.to_i)
  on_page(DetailsPage).adopt_me
end

When(/^I choose to adopt another puppy$/) do
  on_page(ShoppingCartPage).continue_shopping
end

When(/^I choose to complete the adoption$/) do
  on_page(ShoppingCartPage).complete_adoption
end

Then(/^I should see "([^"]*)" as an optional accessory$/) do |accessory|
  expect(@current_page.text).to include accessory
end
