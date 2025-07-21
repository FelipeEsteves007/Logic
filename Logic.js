const nums = [0,1,2,3,4,5,6,6]

function cointansDuplicate (nums){
    for (let i = 0; i < nums.length; i++){
        for (let j = i + 1; j < nums.length; j++){
            if (nums[i] === nums[j]){
                return true 
            }
        }
    }
    return false 
}
console.log(cointansDuplicate(nums));
