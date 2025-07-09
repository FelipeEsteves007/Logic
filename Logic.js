const arr = [2, 15 , 11, 7]
const target = 9 

function twoSum(arr, target) {
    for (let i = 0; i < arr.length; i++){
        for (let j = 1 + i; j < arr.length; j++){
            if (arr[i] + arr[j] === target){
                return [i,j]
            }
        }
    }
}

console.log(twoSum(arr,target));
