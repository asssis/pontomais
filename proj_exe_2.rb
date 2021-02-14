class ProjeExe02
    items = ["999.999.999-99", "999.999.999.99", "99.999.999-99", "999.99.999-99", "999.999.99-99", "999.999.999-9", "aaa.aaa.aaa-aa", "asd", "ana", "kayak"];
 
    puts "-------------EXERCICIO 2--------------" 
    def verificar_cpf(cpf)          
        nil != /[0-9]{3}.[0-9]{3}.[0-9]{3}-[0-9]{2}$/.match(cpf.strip)
    end

    items.each do |item| 
        puts "CPF VALIDO #{item.upcase}" if(ProjeExe02.new.verificar_cpf(item)) 
    end 
end