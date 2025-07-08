function twoSum (arr, terget){
  for (let i = 0; i < arr.length; i++){
    for (let j = 1 + i; j < arr.length; j++){
      if (arr[i] + arr[j] === terget){
        return [i,j]
      }
    }
  }
}

const resultado = twoSum([2, 15 , 11, 7], 26)
console.log(resultado);
