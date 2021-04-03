# require 'rubygems'
# require "watir"
#
#
# When(/^I click the first View Details button$/) do
#   @home.select_puppy_number 1
#   @details = DetailsPage.new(@browser)
#
# end
# And(/^I click the Adopt button$/) do
#   log "I click the Adopt button"
# end
#
#
# Then(/^Then I should see Brook as the name for line item 1$/) do
#   log "Then I should see Brook as the name for line item 1"
# end
#
# Given(/^I am on the puppy adoption site$/) do
#   @log.info "Navigating to url"
#   @browser.goto 'http://puppies.herokuapp.com'
#   @home = HomePage.new(@browser)
# end
#
#
# And(/^I click the Adopt Me button$/) do
#   @details.add_to_cart
#   @cart = ShoppingCartPage.new(@browser)
# end
#
# And(/^I click the Complete the Adoption button$/) do
#   @cart.proceed_to_checkout
#   @checkout = CheckoutPage.new(@browser)
# end
#
# And(/^I enter "([^"]*)" in the name field$/) do |name|
#   @checkout.name = name
# end
#
# And(/^I enter "([^"]*)" in the address field$/) do |address|
#   @checkout.address = address
# end
#
# And(/^I enter "([^"]*)" in the email field$/) do |email|
#   # @browser.text_field(:id => 'order_email').set(arg)
#   @checkout.email = email
# end
#
# And(/^I select "([^"]*)" from the pay with dropdown$/) do |pay_type|
#   # @browser.select_list(:id => 'order_pay_type').select(arg)
#   @checkout.pay_type = pay_type
# end
#
# And(/^I click the Place Order button$/) do
#   # @browser.button(:value => 'Place Order').click
#   @checkout.place_order
# end
#
# Then(/^I should see "([^"]*)"$/) do |arg|
#   fail unless @browser.text.include? arg
# end
#
#
# And(/^I click the Adopt Another Puppy button$/) do
#   @cart.continue_shopping
# end
#
# And(/^I click the second View Details button$/) do
#   @home.select_puppy_number 1
#   @details = DetailsPage.new(@browser)
# end
#
# Then /^I should see "([^"]*)" as the name for line item (\d+)$/ do |name, line_item|
#   expect(@cart.name_for_line_item(line_item.to_i)).to include name
# end
# When /^I should see "([^"]*)" as the subtotal for line item (\d+)$/ do |subtotal, line_item|
#   expect(@cart.subtotal_for_line_item(line_item.to_i)).to eql subtotal
# end
#
# When /^I should see "([^"]*)" as the cart total$/ do |total|
#   expect(@cart.cart_total).to eql total
# end
