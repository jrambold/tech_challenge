=begin
Given an array of integers nums sorted in ascending order,
find the starting and ending position of a given target value.
Your algorithm's runtime complexity must be in the order of O(log n).
If the target is not found in the array, return [-1, -1].
Example 1:
Input: nums = [5,7,7,8,8,10], target = 8
Output: [3,4]
Example 2:
Input: nums = [5,7,7,8,8,10], target = 6
Output: [-1,-1]
=end

# @param {Integer[]} nums
# @param {Integer} target
# @return {Integer[]}

def search_range(nums, target)
  bsearch(nums, 0, nums.length-1, target)
end

def bsearch(nums, low, high, target)
  mid = (high+low)/2
  if nums[mid] == target
    start_index = mid
    end_index = mid
    while start_index > low && nums[mid-1] == target
      start_index -= 1
    end
    while end_index < high && nums[end_index+1] == target
      end_index += 1
    end
    return [start_index, end_index]
  elsif low == high
    return [-1,-1]
  elsif nums[mid] > target
    return bsearch(nums, low, mid, target)
  else
    return bsearch(nums, mid+1, high, target)
  end
end

puts "attempt 1"

puts search_range([5,7,7,8,8,10], 8)

puts "attempt 2"

puts search_range([5,7,7,8,8,10], 6)
