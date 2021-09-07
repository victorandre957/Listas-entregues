matriz= 
[
    [1, 2, 3],
    [4, 5, 6],
    [7, 8, 9]
]

for x in matriz
    tamanho = x.count
    k = tamanho/2
    if tamanho%2 ==0
        x.delete_at(k-1)
        x.delete_at(k-1)
    else
        x.delete_at(k)
    end
end

tamanho = x.count

transposta = []
i = 0

while i != tamanho
    for y in matriz
        transposta.append(y[i])
    end
    i += 1
end

transposta.each_slice(matriz.length) {  | a |  p  a  } 
