//Números Primos
//Enunciado: Crie uma função que verifique se um número é primo.

function isPrime (num){
  if (num <= 1){
    return false
  }
  for (let i = 2; i < num; i++){
    if (num % i === 0){
      return false 
    }
  }
  return true
}
console.log(`The number 7 is prime? ${isPrime(7)}`)
console.log(`The number 10 is prime? ${isPrime(10)}`)