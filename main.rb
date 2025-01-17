
# Autor: Gabriel Xavier
#Criação da lista SmallCaps .csv

require "./smallcaps/small_caps.rb"
require 'Selenium-webdriver' 

Selenium::WebDriver::Chrome.driver_path = "./bin/chromedriver.exe"

browser = Selenium::WebDriver.for :chrome

browser.navigate.to "https://br.advfn.com/indice/smll"

sleep(5)

puts "Criando o cabeçalho do .csv"

s = SmallCaps.new

browser.find_elements(:xpath,'//*[@id="id_sl-dax"]/thead/tr/th').each do |r|
	s.setHeader(r.text)
end	

s.createArq(s.headerConcat,false)

puts "Pegando os dados da tabela"

browser.find_elements(:xpath,'//*[@id="id_sl-dax"]/tbody/tr/td').each do |r|
	s.setData(r.text)
end	

s.createArq(s.dataConcat,true)

puts "fim do processo."

browser.quit

