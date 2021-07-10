import Foundation

// MARK: - Two Sum

var nums = [3, 2, 4]
let target = 6

func twoSum(_ nums: [Int], _ target: Int) -> [Int] {
    var dict = [Int: Int]()

    for (idx, val) in nums.enumerated() {
        dict[val] = idx
    }

    for (idx, val) in nums.enumerated() {
        guard
            let num = dict[target - val],
            num != idx
        else { continue }

        return [idx, num]
    }

    return [Int]()
}

twoSum(nums, target)
