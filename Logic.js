const arr = [1,2,3,4,5,6,7,8,9]

function processarNumeros (arr, callback){
  for (let i = 0; i < arr.length; i++){
    callback(arr[i])
  }
}

const exibir = num => {
  if (num > 5){
    console.log(`Numero maior que 5: ${num}`);
  }
}

processarNumeros(arr, exibir)