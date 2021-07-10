import Foundation

// MARK: - Remove Duplicates allow doubles

var arr2 = [0, 0, 1, 1, 1, 2, 3, 3, 4, 7, 7, 9]

func removeDuplicatesDoubles(_ nums: inout [Int]) -> Int {
    var idx = 0
    while idx < nums.count {
        if idx > 1, nums[idx] == nums[idx - 2] {
            nums.remove(at: idx)
        } else {
            idx += 1
        }
    }
    return nums.count
}

removeDuplicatesDoubles(&arr2)
