Given(/^I have no cheese$/) do
  puts "I have no cheese"
end

When(/^I press the make cheese button$/) do
  puts "I press the make cheese button"
end

Then(/^I should have (\d+) piece of cheese$/) do |arg|
  puts "I should have 1 piece of cheese"
end