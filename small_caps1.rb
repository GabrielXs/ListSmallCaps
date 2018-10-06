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

header.each_with_index do |val, idx|
	if idx < (header.length - 1)
		head.concat(val.to_s + ";")
	else
		head.concat(val.to_s + ";\n")
	end

end


out = File.new("SmallCaps.csv", "a")
	out.puts  head.encode("UTF-8")
out.close


#body
cont = 0
data = ''
for i in 0...body.size
	for ii in 0...header.size 
		if ii < (header.length - 1)
			data.concat(body[cont].to_s + ";")
		else
			data.concat(body[cont].to_s + ";\n")
		end
		if cont >= body.size
			break
		end
		cont+=1
	end
	if cont >= body.size
		break
	end
end

out = File.new("SmallCaps.csv", "a")
	out.puts  data.encode("UTF-8")
out.close

puts "fim do processo"

navegador.quit


