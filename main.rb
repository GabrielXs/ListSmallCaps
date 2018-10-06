include SmallCaps
require 'Selenium-webdriver' 

Selenium::WebDriver::Chrome.driver_path = "./bin/chromedriver.exe"

browser = Selenium::WebDriver.for :chrome

browser.navigate.to "https://br.advfn.com/indice/smll"

sleep(5)

