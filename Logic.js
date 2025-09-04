nums = [2, 15 , 11, 7]
terget = 9 

function twoSun (nums, terget){
    for (let i = 0; i < nums.length; i++){
        for (let j = i + 1; j < nums.length; j++){
            if (nums[i]+ nums[j] === terget){
                return [i,j]
            }
        }
    }
    return false 
}
const resultado = twoSun(nums,terget)
console.log(resultado);


