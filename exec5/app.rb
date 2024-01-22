require 'cpf_cnpj'

def analiser_cnpj
    print 'Informe o numero do CNPJ [APENAS NUMEROS]'
        number = gets.chomp.to_i
       if CNPJ.valid?(number) 
        cnpj = CNPJ.new(number)
        puts "O CNPJ #{cnpj.formatted} é valido"
       else
        puts 'Não é um CNPJ válido!'
       end  
end    

def analiser_cpf
    print 'Informe o numero do cpf [APENAS NUMEROS]'
    number = gets.chomp.to_i
   if CPF.valid?(number) 
    cpf = CPF.new(number)
    puts "O cpf #{cpf.formatted} é valido"
   else
    puts 'Não é um CPF válido!'
   end   
end

loop do 
    puts '------------------------------------'
    puts '      VALIDA CPF OU CNPJ          '
    puts '------------------------------------'
    puts "1 - Validar CNPJ\n2 - Validar CPF\n0 - Sair"
    opc = gets.chomp.to_i
    puts '------------------------------------'
    case opc
        when 0
            puts 'Até mais! 🙋‍♂️'
            break
        when 1
            analiser_cnpj
        when 2
            analiser_cpf
        else
            puts 'Comando inválido!'
    end   


end    