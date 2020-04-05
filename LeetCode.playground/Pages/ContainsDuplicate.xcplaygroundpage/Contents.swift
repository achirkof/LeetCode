import Foundation

// MARK: - Contains Duplicate

let withDublicates = [1, 1, 1, 3, 3, 4, 3, 2, 4, 2] // true
let withoutDublicates = [1, 2, 3, 4] // false

func containsDuplicate(_ nums: [Int]) -> Bool {
    return Set(nums).count < nums.count
}

containsDuplicate(withDublicates)
containsDuplicate(withoutDublicates)
