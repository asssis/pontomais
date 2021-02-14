class ProjeExe01
    items = ["999.999.999-99", "999.999.999.99", "99.999.999-99", "999.99.999-99", "999.999.99-99", "999.999.999-9", "aaa.aaa.aaa-aa", "asd", "ana", "kayak"];
    
    puts "-------------EXERCICIO 1--------------"

    def verificar_palidromo(palavra) 
        if (palavra.strip.downcase == palavra.strip.downcase.reverse)
            true
        else
            false
        end
    end
    items.each do |item| 
        puts "PALIDROMO #{item.upcase}" if(ProjeExe01.new.verificar_palidromo(item)) 
    end 
end