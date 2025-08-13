function valid (str){
    map = {
    ")" : "(",
    "}" : "{", 
    ']' : "["
    }

    const arrStack = [];

    for (let char of str){
        if (char === "(" || char === "[" || char === "{"){
            arrStack.push(char)
        } else {
            if (arrStack.length === 0 || arrStack.pop() !== map[char]){
                return false
            }
        }
    }
    return arrStack.length === 0;
}
console.log(valid('([{}])'));
