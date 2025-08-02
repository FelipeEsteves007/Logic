function isValid(str) {

    const arr = []

    const map = {
        ")": "(",
        "}": "{",
        "]": "["
    }

    for (let char of str){
        if (char === "(" || char === "{" || char === "["){
            arr.push(char)
        } else {
            if (arr.length === 0 || arr.pop() !== map[char]){
                return false 
            }
        }
    }
return arr.length === 0

}
console.log(isValid('([{}])'));
console.log(isValid('([}])'));