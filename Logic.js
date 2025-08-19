function validParentheses(str) {

    let arrStack = [];

    const map = {
        ")": "(",
        "}": "{",
        "]": "["
    }

    for (let caractere of str) {
        if (caractere === "(" || caractere === "{" || caractere === "[") {
            arrStack.push(caractere)
        } else {
            if (arrStack.length === 0 || arrStack.pop() !== map[caractere]){
                return false 
            }
        }
    }
    return arrStack.length === 0
}
console.log(validParentheses('([{}])'));