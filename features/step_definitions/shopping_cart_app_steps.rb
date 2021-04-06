require_relative '../support/helper'

Given(/^I am on the Homepage$/) do
  visit(BuyCarsHomePage)
  puts @browser.title[11..-1].snakecase
end

When(/^I click the Add to cart button for Bentley$/) do
  on(BuyCarsHomePage).add_chrysler_to_cart
  on(BuyCarsHomePage).add_bentley_to_cart
  # on(BuyCarsHomePage).add_jaguar_to_cart
  # on(BuyCarsHomePage).add_acura_to_cart
  # on(BuyCarsHomePage).add_cadillac_to_cart
  # on(BuyCarsHomePage).add_genesis_to_cart

  # on(SignInPage).set_email = "test@test.com"
  # on(BuyCarsHomePage).go_to_user_management_tab
  # on(BuyCarsHomePage).go_to_sign_up_page


end

And(/^I navigate to Shopping Cart$/) do
  on(BuyCarsHomePage).go_to_cart
  puts "On Page: #{@browser.title}"
  expect(@browser.title).to include('Buy Cars | Shopping Cart Page')
end

And(/^I reduce the number of Bentley by one$/) do
  on(BuyCarsShoppingCartPage).click_on_bentley_action
  on(BuyCarsShoppingCartPage).reduce_bentley_by_1
end

And(/^I increase the number of Bentley by one$/) do
  on(BuyCarsShoppingCartPage).click_on_bentley_action
  on(BuyCarsShoppingCartPage).increase_bentley_by_1

end

When(/^I click on checkout button$/) do
  on(BuyCarsShoppingCartPage).checkout_button
  puts @browser.title

end