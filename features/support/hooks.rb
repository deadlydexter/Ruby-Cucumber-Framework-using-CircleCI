

Before('@AdoptingAPuppy') do |scenario|
  log("Initializing Chrome Browser: ")
  Selenium::WebDriver::Chrome::Service.driver_path = "features/support/driver/chromedriver.exe"
  options = ::Selenium::WebDriver::Chrome::Options.new
  options.add_argument('--no-sandbox')
  options.add_argument('--disable-dev-shm-usage')
  options.add_argument('--window-size=1600,1200')
  options.add_argument('--ignore-certificate-errors')
  @browser = Watir::Browser.new :chrome, options: options
  @browser.window.maximize
end


After('@AdoptingAPuppy') do
  log("Closing Chrome Browser Instance")
  @browser.close
end