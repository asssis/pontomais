class ProjeExe03 
    puts "-------------EXERCICIO 3--------------"
    def valor_fatorial(valor)
        return nil if(valor < 0)
        return 1 if(valor == 0) 

        resultado = 1
        for i in 1..valor
            resultado = resultado * i
        end 
        resultado
    end

    p = ProjeExe03.new
    puts "FATOR -1 = #{p.valor_fatorial(-1)}".inspect 
    puts "FATOR  0 = #{p.valor_fatorial(0)}".inspect 
    puts "FATOR  1 = #{p.valor_fatorial(1)}".inspect 
    puts "FATOR  2 = #{p.valor_fatorial(2)}".inspect 
    puts "FATOR  3 = #{p.valor_fatorial(3)}".inspect 
    puts "FATOR  4 = #{p.valor_fatorial(4)}".inspect 
    puts "FATOR  5 = #{p.valor_fatorial(5)}".inspect 
end