const arr = [10, 20, 30]
function processarNumeros (arr, callback){
    for (let i = 0; i < arr.length; i++){
        callback(arr[i])
    }
}
const dobro = num => {
    console.log(`o dobro de ${num} é: ${num * 2}`);
    
}




processarNumeros(arr, dobro)