//amor roma 
function validAnagram (s, t){
    if (s.length !== t.length){
        return false 
    }

    const counter = {}

    for (let char of s){
        counter[char] = (counter[char] || 0) + 1
        console.log(counter);
        
    }
    console.log("---------------------");

    for (let char of t){
        if (!counter[char]){
            return false 
        }
        counter[char]--;
        console.log(counter);
        
    }
    return true
}
console.log(validAnagram("amor", "roma"));
console.log(validAnagram("amores", "roma"));
