const arr = [1, 2, 3, 3]

function contains (arr){
    for (let i = 0; i < arr.length; i++){
        for (let j = 1 + i; j < arr.length; j++){
            if (arr[i] === arr[j]){
                return true
            }
        }
    }
    return false
}

console.log(contains(arr));
