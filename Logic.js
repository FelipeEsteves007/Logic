function fibonacci (num){
    if (num === 0){
        return []
    }
    if (num === 1){
        return [0]
    }

    const arr = [0,1]

    for (let i = 2; i < num; i++){
        let prox = arr[i - 1] + arr[i - 2] 
        arr.push(prox)
    }
    return arr 
}
console.log(fibonacci(7));
