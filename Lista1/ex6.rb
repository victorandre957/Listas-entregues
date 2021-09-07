pratos = [
    { 
        id: 1,
        entrada: "Brusqueta com molho pesto",
        principal: "Frango ao molho barbecue",
        sobremesa: "pudim",
    },
    {
        id: 2,
        entrada: "Terrine de gorgonzola com nozes",
        principal: "sanduíche aberto de salmão defumado",
        sobremesa: "Afogatto",  
    },
    {
        id: 3,
        entrada: "Queijo cremoso com geleia de pimenta",
        principal: "Medalhão de carne moída com bacon",
        sobremesa: "Banana gralhada com canela",
    },
    {
        id: 4,
        entrada: "Burrata com molho de tomate",
        principal: "Fondue de carne com 10 molhos",
        sobremesa: "Brownie com dois chocolates e amêndoas",
    },
    {
        id: 5,
        entrada: "salada de harussame",
        principal: "Sukiyaki com lamen",
        sobremesa: "petit gateau",
    },
]
x = rand(1..5)
y = rand(1..5)
z = rand(1..5)
for cardapio in pratos do
    if cardapio[:id] == x
        entrada = cardapio[:entrada]
    end
    if cardapio[:id] == y
        principal = cardapio[:principal]
    end
    if cardapio[:id] == z
        sobremesa = cardapio[:sobremesa]
    end
end

puts "[ #{entrada}, #{principal}, #{sobremesa}]"