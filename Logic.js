function rescursivo (n){
    if (n === 1){
        return 1
    } else {
        return n + rescursivo(n - 1)
    }
}
console.log(rescursivo(4));

