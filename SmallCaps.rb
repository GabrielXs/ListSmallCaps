# 	Criação de arquivo .csv
#	Lista de Ativos de SmallCaps
#
# 	Gabriel Xavier

require 'Selenium-webdriver'

Selenium::WebDriver::Chrome.driver_path = "./bin/chromedriver.exe"

navegador = Selenium::WebDriver.for :chrome

navegador.navigate.to "https://br.advfn.com/indice/smll"

sleep(15)

puts "Criando Cabeçalho do .csv"

header = []

body = []

navegador.find_elements(:xpath, '//*[@id="id_sl-dax"]/thead/tr/th').each do |r|
	
	header << r.text
	
end

puts "Pegando os dados da Tabela..."

navegador.find_elements(:xpath, '//*[@id="id_sl-dax"]/tbody/tr/td').each do |r|
	
	body << r.text
	
end



head = '' 

for i in 0...header.length
	if i < (header.length - 1)
		head.concat(header[i].to_s + ";")
	else
		head.concat(header[i].to_s + ";\n")
	end

end


out = File.new("SmallCaps.csv", "a")
	out.puts  head
out.close



#body

sleep()

