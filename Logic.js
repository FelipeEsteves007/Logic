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