const precoAcao = [1, 2, 3, 4, 5, 6, 7, 8, 9]

function lucroMaxAcao(precoAcao) {
    let precoMin = Infinity
    let lucroMax = 0

    for (let precoAtual of precoAcao) {
        if (precoAtual < precoMin) {
            precoMin = precoAtual
        }
        const lucro = precoAtual - precoMin
        if (lucro > lucroMax) {
            lucroMax = lucro
        }
    }

    return lucroMax
}

console.log(lucroMaxAcao(precoAcao));
