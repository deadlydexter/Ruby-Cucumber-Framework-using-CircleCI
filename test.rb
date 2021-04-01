require 'rubygems'
require 'selenium-webdriver'
require 'webdrivers/chromedriver'

Webdrivers.install_dir = '/webdrivers/install/dir'

# Input capabilities
caps = Selenium::WebDriver::Remote::Capabilities.new
caps['browser'] = 'Chrome'
caps['os_version'] = '10'
caps['resolution'] = '1920x1080'
caps['os'] = 'Windows'
caps['javascriptEnabled'] = 'true'

options = Selenium::WebDriver::Chrome::Options.new
options.add_argument('--headless')


# , :desired_capabilities => caps
driver = Selenium::WebDriver::Driver.for(:chrome, options: options)
driver.get("http://www.google.com")
element = driver.find_element(:name, "q")
element.send_keys "BrowserStack"
element.submit
wait = Selenium::WebDriver::Wait.new(:timeout => 5) # seconds
wait.until { !driver.title.match(/BrowserStack/i).nil? }
driver.save_screenshot "test-screenshot.png"
driver.quit