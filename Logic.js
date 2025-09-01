function processarNumeros (arr, callback){
    for (let i = 0; i < arr.length; i++){
        callback(arr[i]);
    }
}

const dobro = num => {
    console.log(`${num * 2}`);
}

processarNumeros([10, 20, 30], dobro);
