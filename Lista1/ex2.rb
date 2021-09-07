def basckara (a,b,c)
        delta = b**2 - 4 * a * c
        if delta < 0
            return false
        else
            x1 = (-b + Math.sqrt(delta)) /(2*a)
            x2 = (-b - Math.sqrt(delta)) /(2*a)
                if x1 == x2
                    return x1
                else
                    return x1,x2
                end
        end
    end
puts 'Digite os valores a,b,c da equação do 2° grau'
a,b,c = gets.split.map { |item| item.to_i}
puts 'Se não houver solução o programa vai retornar "false", caso contrario os valores de x1 e x2 irão aparecer'
p basckara(a,b,c)