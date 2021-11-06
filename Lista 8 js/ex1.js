const calculateIMC = (peso,altura) => {icm=peso/(altura**2); return(parseFloat(icm.toFixed(2))+ ' kg/m2')}

const generateUser = (nome,idade,email) => {
    let usuario = new Object()
    usuario.name = nome
    usuario.age = idade
    usuario.email = email
    return usuario
}

const ifPar = (array) => {pares=[]; for(let number of array){if(number%2 === 0){pares.push(number)}} return pares}

let n = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10]

console.log(calculateIMC(85, 1.80))
console.log(generateUser('Victor',18,'victor99@yhaoo.com'))
console.log(ifPar(n))