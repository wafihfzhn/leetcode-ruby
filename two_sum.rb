# @param {Integer[]} nums
# @param {Integer} target
# @return {Integer[]}

def two_sum(nums, target)
  seen_nums = {} # A hash to store numbers and their indices

  nums.each_with_index do |num, index|
    complement = target - num
    if seen_nums.key?(complement)
      return [ seen_nums[complement], index ]
    else
      seen_nums[num] = index
    end
  end
end
