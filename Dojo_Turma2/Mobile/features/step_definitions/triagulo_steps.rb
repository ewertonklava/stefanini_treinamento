Dado('que eu tenha os lados do triangulo {string}') do |string|
 	find_element(:id, "android:id/button1").click
end

Quando('digito os lados') do
  find_element(:id, "com.eliasnogueira.trianguloapp:id/txtLado1").send_keys("10")
  find_element(:id, "com.eliasnogueira.trianguloapp:id/txtLado2").send_keys("10")
  find_element(:id, "com.eliasnogueira.trianguloapp:id/txtLado3").send_keys("10")
  find_element(:id, "com.eliasnogueira.trianguloapp:id/btnCalcular").click
end

#Esquema do cenario
Dado('que eu tenha os lados do triangulo') do
  find_element(:id, "android:id/button1").click
end

Quando('digito os lados {string} {string} {string}') do |lado1, lado2, lado3|
  find_element(:id, "com.eliasnogueira.trianguloapp:id/txtLado1").send_keys(lado1)
  find_element(:id, "com.eliasnogueira.trianguloapp:id/txtLado2").send_keys(lado2)
  find_element(:id, "com.eliasnogueira.trianguloapp:id/txtLado3").send_keys(lado3)
  find_element(:id, "com.eliasnogueira.trianguloapp:id/btnCalcular").click
end

#Esquema do cenario
Entao('tenho a mensagem {string}') do |mensagem|
 wait = Selenium::WebDriver::Wait.new :timeout => 20 
 wait.until { find_element(:id, "com.eliasnogueira.trianguloapp:id/txtResultado").displayed? }

resultado = find_element(:id, "com.eliasnogueira.trianguloapp:id/txtResultado").text
expect(resultado).to eql(mensagem)
end



