Given(/^I have no cheese$/) do
  log("I have no cheese")
end

When(/^I press the make cheese button$/) do
  log "I press the make cheese button"
end

Then(/^I should have (\d+) piece of cheese$/) do |arg|
  log "I should have 1 piece of cheese"
end