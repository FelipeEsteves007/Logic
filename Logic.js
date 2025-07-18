{/*Valid Anagram (#242)
Enunciado:
Dadas duas strings s e t, retorne true se t for um anagrama de s, e false caso contrário.

Um anagrama é uma palavra ou frase formada reorganizando as letras de outra palavra ou frase, geralmente usando todas as letras originais exatamente uma vez. */}

function isAnagram (s, t){
    if (s.length !== t.length){
        return false 
    }

    const count = {}    // contar quantas vezes cada letra aparece na string

    for (let char of s){ //percorre s e add a char 
        count[char] = (count[char] || 0) + 1 // se ja existe count[char] soma 1 no valor atual, senão começar com zero se soma 1
    }

    for (let char of t){ //percorre a strinf t 
        if (!count[char]){ // se não tiver a letra ou tiver alguma letra diferente ou a mais retorna false
            return false 
        }
        count[char]--;
    }
    return true 
}
console.log(isAnagram("silent","listen"));
console.log(isAnagram("rat","car"));
