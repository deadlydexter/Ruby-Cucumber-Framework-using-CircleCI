require 'logger'

Before('@AdoptingOnePuppy or @AdoptingTwoPuppy or @ValidateCartItems') do |scenario|

  # Initialize Logger

  time = Time.now.strftime("%m-%d-%y")
  console_log = Logger.new(STDOUT)
  file_log = Logger.new(File.open("log-#{time}.log", 'a'))

  console_log.level = Logger::INFO
  file_log.level = Logger::INFO

  @log = MultiLogger.new(console_log, file_log)
  @log.info "-------------------Logger START--------------------------"
  @log.info("Initializing Chrome Browser: ")

  # Initialize browser Instance:

  options = Selenium::WebDriver::Chrome::Options.new
  options.add_argument('--no-sandbox')
  options.add_argument('--disable-dev-shm-usage')
  options.add_argument('--window-size=1600,1200')
  options.add_argument('--ignore-certificate-errors')
  @browser = Watir::Browser.new :chrome, options: options
  @browser.window.maximize

end


After('@AdoptingOnePuppy or @AdoptingTwoPuppy or @ValidateCartItems') do
  @log.info("Closing Chrome Browser Instance")
  @browser.close
  @log.info "-------------------Logger END--------------------------"
end