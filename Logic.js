function validAnagram (s,t){
    if (s.length !== t.length){
        return false
    }

    const cont = {}

    for (let char of s){
        cont[char] = (cont[char] || 0) + 1
    }

    for (let char of t){
        if (!cont[char]){
            return false 
        }
        cont[char]--
    }
    return true 
}

console.log(validAnagram("ana", "naa"));

console.log(validAnagram("anaa", "nnaa"));
