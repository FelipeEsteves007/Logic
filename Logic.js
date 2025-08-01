function isValid(str){
    const arrPilha = [] // criamos um array que ira servir como uma pilha 

    const mapa = { // criamos um objeto que liga cada fechamento a sua abertura 
        ')': '(',
        ']': '[',
        '}': '{'
    }

    // percorrer cada caractere da string
    for (let char of str){
        // se for um caractere de abertura empilhamos 
        if (char === '(' || char === '[' || char === '{'){
            arrPilha.push(char) // push no arr de pilha 
        } else {
            // se caso não for, a gente verifica o topo pilha se corresponde a fechadura da abertura 
            if (arrPilha.length === 0 || arrPilha.pop() !== mapa[char]) // se a pilha estiver vazia (sem nada pra comparar) ou se o topo for diferente do esperado
            return false 
        }
    }
return arrPilha.length === 0
}
console.log(isValid('([{}])'));

