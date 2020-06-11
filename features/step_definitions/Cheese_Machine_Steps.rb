require 'rubygems'
require "watir"

Given /^I have no cheese$/ do
  log("I am so sad. I have no cheese :(")
end

When /^I press the make cheese button$/ do
  log("There is hope. I hope this machine works")
end

Then /^I should have (\d+) piece of cheese$/ do |num_pieces|
  log("Rejoice! We have #{num_pieces} pieces of cheese.")
end

When(/^I click the first View Details button$/) do
  @browser.button(:value => 'View Details', :index => 0).click

end
And(/^I click the Adopt button$/) do
  log "I click the Adopt button"
end


Then(/^Then I should see Brook as the name for line item 1$/) do
  log "Then I should see Brook as the name for line item 1"
end

Given(/^I am on the puppy adoption site$/) do
  @log.info "Navigating to url"

  @browser.goto 'http://puppies.herokuapp.com'
end


And(/^I click the Adopt Me button$/) do
  @log.info "Clicked on Adopt Me button"
  @browser.button(:value => 'Adopt Me!').click
end

And(/^I click the Complete the Adoption button$/) do
  @browser.button(:value => 'Complete the Adoption').click
end

And(/^I enter "([^"]*)" in the name field$/) do |arg|
  @browser.text_field(:id => 'order_name').send_keys(arg, :tab)
end

And(/^I enter "([^"]*)" in the address field$/) do |arg|
  @browser.textarea(:id => 'order_address').send_keys(arg)
end

And(/^I enter "([^"]*)" in the email field$/) do |arg|
  @browser.text_field(:id => 'order_email').set(arg)
end

And(/^I select "([^"]*)" from the pay with dropdown$/) do |arg|
  @browser.select_list(:id => 'order_pay_type').select(arg)
end

And(/^I click the Place Order button$/) do
  @browser.button(:value => 'Place Order').click
end

Then(/^I should see "([^"]*)"$/) do |arg|
  fail unless @browser.text.include? arg
end


And(/^I click the Adopt Another Puppy button$/) do
  @browser.button(:value => 'Adopt Another Puppy').click
end

And(/^I click the second View Details button$/) do
  @browser.button(:value => 'View Details', :index => 1).click
end

Then /^I should see "([^"]*)" as the name for line item (\d+)$/ do |name, line_item|
  row = (line_item.to_i - 1) * 6
  expect(@browser.table(:index => 0)[row][1].text).to include name
end
When /^I should see "([^"]*)" as the subtotal for line item (\d+)$/ do |subtotal, line_item|
  row = (line_item.to_i - 1) * 6
  expect(@browser.table(:index => 0)[row][3].text).to eql subtotal
end

When /^I should see "([^"]*)" as the cart total$/ do |total|
  expect(@browser.td(:class => 'total_cell').text).to eql total
end
