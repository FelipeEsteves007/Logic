function fatorial (num){
    //5 4 3 2 1 = 120
    if (num === 1){
        return 1
    } else {
        return num * fatorial(num - 1)
    }
}
console.log(fatorial(5));
