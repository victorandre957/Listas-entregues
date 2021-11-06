
const entrada1 = require('prompt-sync')()
const entrada2 = require('prompt-sync')()

let unidade = entrada1('Celsius, Fahrenheit ou Kelvin ? ')
unidade = unidade.toLowerCase()

if (unidade == "celsius" || unidade == "fahrenheit" || unidade == "kelvin") {

let valor = entrada2('Digite um valor para converter: ')
valor = parseInt(valor, 10)


const fahrenheit = () => {
    if (isNaN(valor)) {console.log("Não é um valor válido")}

    else{
        c = (valor - 32) * (5/9)
        k = c + 273,15
        console.log(`${valor} em graus Fahrenheit vai ser equivalente a ${c} graus Celsius e ${k} graus Kelvin`)
    }
}

const celsius = () => {
    if (isNaN(valor)) {console.log("Não é um valor válido")}

    else{
        f = (valor * 9/5) + 32
        k = valor + 273,15
        console.log(`${valor} em graus Celsius vai ser equivalente a ${f} graus fahrenheit e ${k} graus Kelvin`)
    }
}

const kelvin = () => {
    if (valor === NaN) {console.log("Não é um valor válido")}

    else{
        c = valor - 273,15
        f = (c * 9/5) + 32
        console.log(`${valor} em ${unidade} vai ser equivalente a ${c} graus Celsius e ${f} graus Fahrenheit`)
    }
}

if (unidade === "fahrenheit") {fahrenheit()}
else if (unidade === "celsius") {celsius()}
else {kelvin()}
}

else {console.log("Não é uma unidade valida")}