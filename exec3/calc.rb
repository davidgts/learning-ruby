require'./class_Calculadora.rb'
calc = Calculadora.new
puts "Digite o valor A"
a = gets
puts "Digite o valor B"
b = gets

puts "---------------"
puts "Calculadora"
puts "--------------"
puts "Escolha a operacao!"
puts "1 Adicao | +"
puts "2 Subtracao | -"
puts "3 Multiplicacao | *"
puts "4 Divisão | /"
opc = gets.chomp #.chomp remove o valor da quebra de linha

case opc
    when "1"
        puts calc.soma(a,b)
    when "2"
        puts calc.sub(a,b)
    when "3"
        puts calc.mult(a,b)    
    when "4"
        puts calc.div(a,b)    
    else
       puts "Operação incorreta #{opc}"
end
