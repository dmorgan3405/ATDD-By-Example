
Then(/^I should see "([^"]*)" as the name for line item (\d+)$/) do |expected_name, line_item|
  on_page(ShoppingCartPage) do |page|
    expect(page.name_for_line(line_item.to_i)).to include expected_name
  end
end

Then(/^I should see "([^"]*)" as the subtotal for line item (\d+)$/) do |expected_subtotal, line_item|
  on_page(ShoppingCartPage) do |page|
    expect(page.price_for_line(line_item.to_i)).to eq expected_subtotal
  end
end

Then(/^I should see "([^"]*)" as the total for the cart$/) do |expected_total|
  on_page(ShoppingCartPage) do |page|
    expect(page.total_amount).to eq expected_total
  end
end
