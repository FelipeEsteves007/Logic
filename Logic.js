// 0 1 2 3 5 8 
function fibonacci (num){
    if (num === 0){
        return []
    }
    if (num === 1){
        return [0]
    }

    let arr = [0,1]

    for (let i = 2; i < num; i++){
        let counter = arr[i - 1] + arr[i - 2]
        arr.push(counter)
    }
    return arr
}
console.log(fibonacci(10));
