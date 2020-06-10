require 'rubygems'
require "watir"

When(/^I click the first View Details button$/) do
  log "When I click the first View Details button"

end
And(/^I click the Adopt button$/) do
  log "I click the Adopt button"
end



Then(/^Then I should see Brook as the name for line item 1$/) do
  log "Then I should see Brook as the name for line item 1"
end

Given(/^I am on the puppy adoption site$/) do
  #@browser = Watir::Browser.new :chrome
  @browser.goto 'http://puppies.herokuapp.com'
end

When(/^I click the View Details button$/) do
  @browser.button(:value => 'View Details', :index => 0).click
end

And(/^I click the Adopt Me button$/) do
  @browser.button(:value => 'Adopt Me!').click
end

And(/^I click the Complete the Adoption button$/) do
  @browser.button(:value => 'Complete the Adoption').click
end

And(/^I enter "([^"]*)" in the name field$/) do |arg|
  @browser.text_field(:id => 'order_name').send_keys(arg,:tab)
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

