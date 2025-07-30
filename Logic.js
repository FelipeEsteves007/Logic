const numero = [10,20,30]
function processarNumeros (numero, callback){
    for (let i = 0; i < numero.length; i++){
        callback(numero[i])
    }
}

const dobro = numero => {
    console.log(`O dobro de ${numero}: ${numero * 2}`);
    
}

processarNumeros(numero,dobro)