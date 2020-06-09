

Before('@AdoptingAPuppy') do |scenario|
  log("Initializing Chrome Browser: ")
  Selenium::WebDriver::Chrome.driver_path = "features/support/driver/chromedriver.exe"
  @browser = Watir::Browser.new :chrome
  @browser.window.maximize
end


After('@AdoptingAPuppy') do
  log("Closing Chrome Browser Instance")
  @browser.close
end