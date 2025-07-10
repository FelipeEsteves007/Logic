function isPalindrome (str){
    invert = str.split('').reverse().join('')
    return invert 
}
console.log(isPalindrome('amor'));
console.log(isPalindrome('roma'));
