const arr = [1,2,3,4,5,7,9]

function processarNumeros(arr,callback){
    for(let i = 0; i < arr.length; i++){
        callback(arr[i])
    }
}

const exibir = num => {
    if (num > 5){
        console.log(`${num} é maior que 5`);
        
    }
}

processarNumeros(arr,exibir)