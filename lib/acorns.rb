require "selenium-webdriver"
 
# chromedriver_path = File.join(File.absolute_path('', File.dirname("C://Projects/Selenium/Drivers")),"Drivers","chromedriver.exe")
# puts chromedriver_path
# Selenium::WebDriver::Chrome.driver_path = chromedriver_path
# driver = Selenium::WebDriver.for :chrome

Selenium::WebDriver::Chrome.driver_path = 'C:\Project\chromedriver_win32\chromedriver.exe'
driver = Selenium::WebDriver.for :chrome
driver.navigate.to "http://google.com"
 
element = driver.find_element(:name, 'q')
element.send_keys "TestProject.io"
element.submit
 
puts driver.title
 
# driver.quit