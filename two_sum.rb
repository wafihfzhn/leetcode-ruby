# @param {Integer[]} nums
# @param {Integer} target
# @return {Integer[]}

# My Solution
# Runtime 419ms and Beats 13.36%
# Memory 211.78 and Beats 97.11%
def two_sum(nums, target)
  nums.each_with_index do |num, index|
    complement_num = target - num
    index_complement_num = nums.find_index(complement_num)
    next if index_complement_num.nil? || index_complement_num == index

    return [ index , index_complement_num ]
  end
end

# AI Solution
# Runtime 3ms and Beats 55.70%
# Memory 212.40 and Beats 49.14%
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
