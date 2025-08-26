let arr = [1,2,3,4,5,6,7,8]

function processarNumeros (arr, callback){
    for (let i = 0; i < arr.length; i++){
        callback(arr[i]);
    }
}

const maiores = num => {
    if (num > 5){
        console.log(num);
    }
}

processarNumeros(arr,maiores);