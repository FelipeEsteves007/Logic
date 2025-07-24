const precoAcao = [1, 2, 3, 4, 5, 6, 7, 8, 9] // lista de precos 

function lucroMax(precoAcao) { //funcao com parametro na lista 
    let valorMin = Infinity // valor minimo comeca no mais alto
    let lucroMax = 0 // o lucro comeca zero pois n temos nada ainda

    for (precoAtual of precoAcao){  // percorremos o preco da acao e pra cada preco
        if (precoAtual < valorMin){ // preco atual for menor do que infinity
            valorMin = precoAtual // add a valor min, infinity é só o primeiro e vai correndo pela lista e comparando 
            console.log(`valor min: ${valorMin}`);
        }
        console.log("----------------------------------");
        
        const lucro = precoAtual - valorMin  // pegamos o lucro que é 2-1, 3-1; 4-1...
        console.log(`lucro: ${lucro}`);
        console.log("----------------------------------");

        if (lucro > lucroMax){ // se o lucro for mair que o lucro max 
            console.log(`Lucro max: ${lucroMax}`);
            lucroMax = lucro  // add a  lucro max 
        }
        console.log("FIM DO FOR");
    }
    console.log("----------------------------------");
    return lucroMax // retornamos o lucro max 
}
console.log(lucroMax(precoAcao));
