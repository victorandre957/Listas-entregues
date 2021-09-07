def triangulo (tamanho)
    ponto = '*'
    i = 1
        while i != tamanho
            puts ponto*i
            i +=1
        end
        while i !=0
            puts ponto * i
            i -= 1
        end
    end
puts 'Digite o tamanho do triângulo'
tamanho = gets.to_i
triangulo(tamanho)