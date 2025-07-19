{/*Valid Anagram (#242)
Enunciado:
Dadas duas strings s e t, retorne true se t for um anagrama de s, e false caso contrário.

Um anagrama é uma palavra ou frase formada reorganizando as letras de outra palavra ou frase, geralmente usando todas as letras originais exatamente uma vez. */}
// amor roma 


function anagram (s, t){
    if (s.length !== t.length){
        return false 
    }

    const letras = {}

    for (let char of s){
        letras[char] = (letras[char]  || 0) + 1  
    }

    for (let char of t){
        if (!letras[char]){
            return false 
        }
        letras[char]--;
    }

    return true 
}

console.log(anagram("roma","amor"));

console.log(anagram("romas","amores"));
