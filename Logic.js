const precoAcao = [10,25,16,9,1];

function lucroMax (precoAcao){
    let maxLucro = 0;
    let precoMin = Infinity;

    for (let diaAtual of precoAcao){
        if (diaAtual < precoMin){
            precoMin = diaAtual
        }

        let lucro = diaAtual - precoMin

        if (lucro > maxLucro){
            maxLucro = lucro
        }
    }
    return maxLucro;
}

console.log(lucroMax(precoAcao));