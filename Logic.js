function validAnagram (s,t){
    if (s.length !== t.length){
        return false
    }

    const counter = {}

    for (let char of s){
        counter[char] = (counter[char] || 0) + 1
    }

    for (let char of t){
        if (!counter[char]){
            return false
        }
        counter[char]--
    }
    return true 
}
console.log(validAnagram("amor", "roma"));
console.log(validAnagram("amores", "romas"));
