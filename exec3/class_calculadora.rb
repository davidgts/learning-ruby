class Calculadora
    def sub(a,b)
        res = a.to_i - b.to_i
		 "O Resultado de #{a} - #{b} = #{res}" 
    end
   
    def mult(a,b)
       res = a*b
       "O Resultado de #{a} * #{b} = #{res}"
    end
    
    def div(a,b)
        if b!=0 
            res = (a.to_f / b.to_f) #to_f força a variável estar como float
            "O Resultado de #{a} / #{b} = #{res}"
        else
         '❌ O valor 0 não pode ser colocado como denomidador! ';
        end
    end
    
    def soma(a,b)
       res = a.to_i+b.to_i
       "O Resultado de #{a} + #{b} = #{res}"
    end    

end