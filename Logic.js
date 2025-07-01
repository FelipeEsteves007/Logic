const arr = [2, 8, 4, 10, 3]

function processarNumeros (arr, callback){
    for (let i = 0 ; i < arr.length; i++){
        callback(arr[i])
    }
}

const exibir = numero => {
    if (numero > 5){
        console.log(`Numero maior que 5: ${numero}`);
    }
}

processarNumeros(arr, exibir)