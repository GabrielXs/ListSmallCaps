# 	Criação de arquivo .csv
#	Lista de Ativos de SmallCaps
#
# 	Gabriel Xavier
header = [0,1,2,3,6,4,58,1]
dados = ["ABC Brasil", "ABCB4", "14,45", "14,3", "14,67", "0,87", "+6,41%",
"19:45:00", "Alpargatas", "ALPA4", "12,5", "12,29", "12,57", "0,46", "+3,82%",
"19:45:01", "Aliansce", "ALSC3", "15,75", "14,99", "15,94", "1,08", "+7,36%", "19:45:01",
"+4,25%", "19:45:01", "Wiz S.A.", "WIZS3", "8,05", "7,85", "8,1", "0,29", "+3,74%", "19:45:01"]

puts "testeando\n quebra de linha"
texto = '' 
for i in 0...header.length
	if i < (header.length - 1)
		texto.concat(header[i].to_s + ";")
	else
		texto.concat(header[i].to_s + ";\n")
	end

end

p texto