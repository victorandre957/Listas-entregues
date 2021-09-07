require 'prime'

def primo?(n)
    if Prime.prime?(n)
        return true
    else
        return false
    end
end

lista = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10,]

primoQuadrado  = []
for x in lista
    if primo?(x) == true
        primoQuadrado.append (x**2)
    end
end
p primoQuadrado
