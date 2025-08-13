function valid (s, t){
    if (s.length !== t.length){
        return false;
    }

    const arr = {};

    for (let char of s){
        arr[char] = (arr[char] || 0) + 1;
    }

    for (let char of t){
        if (!arr[char]){
            return false 
        }
        arr[char] --
    }
    return true 
}
console.log(valid("silent","listen"));
console.log(valid("rat","car"));