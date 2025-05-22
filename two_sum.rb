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
