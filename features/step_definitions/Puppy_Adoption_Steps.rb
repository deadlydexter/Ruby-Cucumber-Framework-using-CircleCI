Given /^I am on the puppy adoption site$/ do
  visit(HomePage)
end

When /^I click the View Details button for "([^"]*)"$/ do |name|
  on(HomePage).select_puppy name
end

When /^I click the Adopt Me button$/ do
  on(DetailsPage).add_to_cart
end

When /^I click the Complete the Adoption button$/ do
  on(ShoppingCartPage).proceed_to_checkout
end

When /^I click the Adopt Another Puppy button$/ do
  on(ShoppingCartPage).continue_shopping
end

When /^I enter "([^"]*)" in the name field$/ do |name|
  on(CheckoutPage).name = name
end

When /^I enter "([^"]*)" in the address field$/ do |address|
  on(CheckoutPage).address = address
end

When /^I enter "([^"]*)" in the email field$/ do |email|
  on(CheckoutPage).email = email
end

When /^I select "([^"]*)" from the pay with dropdown$/ do |pay_type|
  on(CheckoutPage).pay_type = pay_type
end

When /^I click the Place Order button$/ do
  on(CheckoutPage).place_order
end

Then /^I should see "([^"]*)"$/ do |expected|
  expect(@current_page.text).to include expected

end

Then /^I should see "([^"]*)" as the name for line item (\d+)$/ do |name, line_item|
  expect(on(ShoppingCartPage).name_for_line_item(line_item)).to include name
end

When /^I should see "([^"]*)" as the subtotal for line item (\d+)$/ do |subtotal, line_item|
  expect(on(ShoppingCartPage).subtotal_for_line_item(line_item)).to eql subtotal
end

When /^I should see "([^"]*)" as the cart total$/ do |total|
  expect(on(ShoppingCartPage).cart_total).to eql total
end

And(/^I complete the adoption with:$/) do |table|

  data = table.hashes.first
  on(CheckoutPage) do |page|
    page.name = data['name']
    page.address = data['address']
    page.email = data['email']
    page.pay_type = data['pay_type']
    page.place_order
  end

end

And(/^I complete the adoption with default data:$/) do |table|
  on(CheckoutPage).checkout(table.hashes.first)
end

And /^I complete the adoption using a Credit card$/ do
  on(CheckoutPage).checkout('pay_type' => 'Credit card')
end

And /^I complete the adoption$/ do
  on(CheckoutPage).checkout
end

When(/^I complete the adoption of a puppy$/) do

  on(HomePage).select_puppy
  on(DetailsPage).add_to_cart
  on(ShoppingCartPage).proceed_to_checkout
  on(CheckoutPage).checkout

end

When /^I checkout leaving the name field blank/ do
   on(HomePage).select_puppy
   on(DetailsPage).add_to_cart
   on(ShoppingCartPage).proceed_to_checkout
   on(CheckoutPage).checkout('name' => '')
end

Then /^I should see the error message "([^"]*)"$/ do |msg|
  expect(@current_page).to have_error_message msg
end

When(/^I complete the adoption of a puppy with navigate_all$/) do
  navigate_all
end