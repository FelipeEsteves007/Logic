function isPrime (num){
    if (num <= 1) return true 
    else {
        for (let i = 2; i < num; i++){
            if (num % i === 0){
                return false 
            }
        }
    }
    return true
}
console.log(`The number 7 is prime? ${isPrime(7)}`);
console.log(isPrime(8));

