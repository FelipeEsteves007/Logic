<<<<<<< HEAD
const arr = [0,1,2,3,4,5,6,7,8,9,10]

function processarNumeros (arr, callback){
    for (let i = 0; i < arr.length; i++) {
        callback(arr[i])
    }
}

const exibir = num => {
    if (num > 5){
        console.log(`Maior que 5: ${num}`);
    }
}

processarNumeros(arr,exibir)
=======
const arr = [1,2,3,4,5,6,7,8,9]

function processarNum (arr, callback){
  for (let i = 0; i < arr.length; i++){
    callback(arr[i])
  }
}

const exibir = num => {
  if (num > 5) { 
    console.log(`O ${num} é maior que 5`);
  }
}

processarNum(arr,exibir)
>>>>>>> parent of 0ffea63 (add)
