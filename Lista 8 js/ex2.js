var arthur = {paoDeQueijo:true, pet:true, carteiraDeTrabalho:true, relogio:18}


const entrarNaSurdina = () => {if(arthur.relogio === 18){return true} else {return false}}

const vencerEduardo = () => {if(arthur.paoDeQueijo === true ){return true} else {return false}}
const vencerGabriel = () => {if(arthur.pet === true){return true} else {return false}}
const vencerFelipe = () => {if(arthur.carteiraDeTrabalho === true){return true} else {return false}}


if (entrarNaSurdina () === true) {
    console.log("Arthur entrou na surdina, roubou os documentos e acabou com a GP")
} 

else if (vencerEduardo() === true){
    if(vencerGabriel() === true){
        if (vencerFelipe() === true){
            console.log("Arthur derrou os 3 membros, pegou os documentos e destruiu o que restou da GP.")
        }
        else {console.log("Arthur venceu Eduardo e Gabriel mas pereceu ao enfrentar o Felipe, por isso a GP prevaleceu.")}
    }
    else {console.log("Arthur derrou Eduardo mas o Gabriel o derrou e a GP permaneçe de pé.")}
}

else{
    console.log("Arthur não pode vencer os membros da GP e nem entrar na surdina para roubar os documentos. Por isso a GP não será destruída hoje.")
}

