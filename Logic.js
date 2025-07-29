const nums = [2,15,11,7]
const terget = 9

function twoSum (nums,terget){
    for (let i = 0; i < nums.length; i++){
        for (let j = i + 1; j < nums.length; j++){
            if (nums[i] + nums[j] === terget){
                return [i,j]
            }
        }
    }
    return false 
}

console.log(twoSum(nums,terget));
