import Foundation

// MARK: - Remove Duplicates

var arr = [0, 0, 1, 1, 1, 2, 3, 3, 4, 7, 7, 9]

func removeDuplicates(_ nums: inout [Int]) -> Int {
    var idx = 0
    while idx < nums.count {
        if idx > 0, nums[idx] == nums[idx - 1] {
            nums.remove(at: idx)
        } else {
            idx += 1
        }
    }
    return nums.count
}

removeDuplicates(&arr)
