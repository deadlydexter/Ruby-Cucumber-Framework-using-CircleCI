

Before('@AdoptingAPuppy') do |scenario|
  log("Initializing Chrome Browser: ")
  @browser = Watir::Browser.new :chrome
  @browser.window.maximize
end


After('@AdoptingAPuppy') do
  log("Close Chrome Browser Instance")
  @browser.close
end