const precoAcao = [7,9,15,78,6,1,3]

function lucroAcoes (precoAcao){
    let precoMin = Infinity
    let lucroMax = 0

    for (let precoAtual of precoAcao){
        if (precoAtual < precoMin){
            precoMin = precoAtual
        }
        const lucroDiario = precoAtual - precoMin

        if (lucroDiario > lucroMax){
            lucroMax = lucroDiario
        }
    }
    return lucroMax
}
console.log(lucroAcoes(precoAcao));
