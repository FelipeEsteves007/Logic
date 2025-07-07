//onst arr = [10, 20, 30]

function processarNumeros(num, callback){
  for (let i = 0; i < num.length; i++){
    callback(num[i])
  }
}

{/*
const dobro = num => {
  console.log(`o dobro de ${num} é : ${num * 2}`);
}
*/}
processarNumeros([10,20,30], (num)=> {
 console.log(`o dobro de ${num} é : ${num * 2}`);
  
})
