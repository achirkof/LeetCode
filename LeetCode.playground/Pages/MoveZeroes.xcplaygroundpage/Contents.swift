import Foundation

// MARK: - Move Zeroes

var input = [0, 1, 0, 3, 12]
var input2 = [0, 0, 0, 1]

func moveZeroes(_ nums: inout [Int]) {
    var i = 0
    var idx = 0

    while i < nums.count {
        if nums[idx] == 0 {
            let el = nums.remove(at: idx)
            nums.append(el)
        } else {
            idx += 1
        }

        i += 1
    }
}

moveZeroes(&input2)
