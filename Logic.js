function isValid(str) {

    const mapa = {
        ")": "(",
        "]": "[",
        "}": "{"
    }

    let arr = []

    for (let char of str) {
        if (char === "(" || char === "[" || char === "{") {
            arr.push(char)
        } else {
            if (arr.length === 0 || arr.pop() !== mapa[char])
            return false
        }
    }
    return arr.length === 0
}
console.log(isValid('([{}])'));