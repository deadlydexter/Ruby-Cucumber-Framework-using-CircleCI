require 'logger'

Before('@AdoptingAPuppy') do |scenario|
  #Initialize Logger
  time = Time.now.strftime("%m-%d-%y")
  @log = Logger.new("log_#{time}.txt")
  @log.level = Logger::DEBUG
  @log.info("Initializing Chrome Browser: ")
  options = Selenium::WebDriver::Chrome::Options.new
  options.add_argument('--no-sandbox')
  options.add_argument('--disable-dev-shm-usage')
  options.add_argument('--window-size=1600,1200')
  options.add_argument('--ignore-certificate-errors')
  @browser = Watir::Browser.new :chrome, options: options
  @browser.window.maximize
end


After('@AdoptingAPuppy') do
  @log.info("Closing Chrome Browser Instance")
  @browser.close
end