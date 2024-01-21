@agenda = [
    {id:1,nome:'Diego',telefone:'83999999999',email:''},
    {id:2,nome:'Maria',telefone:'83999999999',email:''}
]

def all_contacts
    @agenda.each do |contato|
        puts "ID: #{contato[:id]} | Nome: #{contato[:nome]} | Telefone: #{contato[:telefone]} | Email: #{contato[:email]}"
    end    
end    

def add_contacts

    loop do
        print 'Informe o nome:'
        $name = gets.chomp
        print 'Informe o telefone:'
        $tel = gets.chomp

        if ($name.empty? || $tel.empty?)
            puts 'Nome e telefone são campos obrigatorios!' 
        else
            break
        end
    end

    print 'Informe o email:'
    email = gets.chomp
    @agenda << {id:@agenda.length+1,nome:$name,telefone:$tel,email:email}
end    

def find_contact
    print 'Qual contato deseja ? [Informe o nome]'
    name = gets.chomp

    @agenda.each do |contato|
        if contato[:nome].downcase.include?(name.downcase)
            puts "ID: #{contato[:id]} | Nome: #{contato[:nome]} | Telefone #{contato[:telefone]}"   
            return
        end           
    end   
    puts "Contato não encontrado!"   
end    

def del_contact
    print 'Informe o id do contato:'
    id = gets.chomp.to_i
    @agenda.each do |contato|
        if contato[:id] == id
            index = @agenda.index(contato)
            @agenda.delete_at(index)            
            break            
        end    
    end            

end    

def edit_contact
    print 'Informe o id do contato:'
    id = gets.chomp.to_i
    
    @agenda.each do |contato|
        if contato[:id] == id
            print "Informe o nome para editar [#{contato[:nome]}]"
            tmp_name =  gets.chomp
            contato[:nome] = tmp_name.empty? ? contato[:nome] : tmp_name
            print "Informe o telefone para editar [#{contato[:telefone]}]"
            tmp_telefone =  gets.chomp
            contato[:telefone] = tmp_telefone.empty? ? contato[:telefone] : tmp_telefone
            print "Informe o email para editar [#{contato[:email]}]"
            tmp_email =  gets.chomp
            contato[:email] = tmp_email.empty? ? contato[:email] : tmp_email
        end    
    end    
end    

loop do 
    puts '------------------------------------'
    puts '      CADASTRO DE CONTATOS          '
    puts '------------------------------------'
    puts "1 - Cadastrar Contato\n2 - Editar Contato\n3 - Excluir Contato\n4 - Visualizar Contato\n5 - Listar todos contatos\n0 - Sair"
    opc = gets.chomp.to_i
    puts '------------------------------------'
    case opc
        when 0
            puts 'Até mais! 🙋‍♂️'
            break
        when 1
            add_contacts()
        when 2
            edit_contact()
        when 3
            del_contact()
        when 4
            find_contact()
        when 5
            all_contacts()
        else
            puts 'Comando inválido!'
    end   


end    

 