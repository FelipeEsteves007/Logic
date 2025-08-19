function maiorMenor (arr){
    let maior = arr[0]
    let menor = arr[0]

    if (arr.length === 0){
        return {maior: null, menor: null}
    }

    for (let i = 1; i < arr.length; i++){
        if (arr[i] > maior){
            maior = arr[i]
        }
        if (arr[i] < menor){
            menor = arr[i]
        }
    }
    return {maior: maior, menor: menor}
}
console.log(maiorMenor([4, 9, 2, 1]));

