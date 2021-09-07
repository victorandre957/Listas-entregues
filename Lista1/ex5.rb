def organizaLista(lista)
    primeiro = lista.first
    tamanho = lista.size
    ultimo = lista.last
    soma = lista.sum
    media = (soma.to_f/tamanho.to_f)
    ordenada = lista.sort!
        if tamanho%2 ==0
            valor1 = lista[(tamanho/2)-1]
            valor2 = lista[tamanho/2]
            mediana = ((valor1 + valor2).to_f/2)
        else
            mediana = lista[(tamanho/2) + 0.5]
        end
    resposta = {
    :primeiro=> primeiro, 
    :quantidade=> tamanho, 
    :ultimo=> ultimo, 
    :soma=> soma,
    :media=> media, 
    :mediana=> mediana, 
    :ordenada=> ordenada
    }
    p resposta
end

organizaLista([-10, -15, -20, 10, 20, 5])

