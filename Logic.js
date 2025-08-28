function isValid(s) {
    let arrStack = []
    let map = {
        ')': '(',
        ']': '[',
        '}': '{'
    }

    for (let char of s) {
        if (char === '(' || char === '[' || char === '{') {
            arrStack.push(char);
        } else {
            if (arrStack.length === 0 || arrStack.pop() !== map[char]){
                return false 
            }
        }
    }
    return arrStack.length === 0
}
console.log(isValid('([{}])'));
console.log(isValid('([}])'));