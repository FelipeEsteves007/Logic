function validAnagram (s, t){
    if (s.length !== t.length ){ // se o tamanho das duas forem difentes é falso
        return false
    }

    const count = {} // abro um contador

    for (let char of s){ // percorre a string s
        count[char] =(count[char] || 0) + 1 // // se a letra existir soma 1 se nao começa com 0
    } // a:1 b:0

    for(let char of t){ // percorre a string t 
        if (!count[char]){ // se alguma letra for diferente do contador 
            return false // retorna falso 
        }
        count[char]-- // se nao diminui aquela letra
    }
    return true // se caso nenhum for falso, validamos como um anagrama
}
console.log(validAnagram("silent","listen"));
console.log(validAnagram("rat","car"));