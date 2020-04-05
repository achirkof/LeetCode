import Foundation

// MARK: - Rotate Array

var arrToRotate = [1, 2, 3, 4, 5, 6, 7] // [5, 6, 7, 1, 2, 3, 4]
let steps = 3

func rotate(_ nums: inout [Int], _ k: Int) {
    if nums.isEmpty {
        return
    }

    for _ in 0 ..< k {
        nums.insert(contentsOf: [nums.popLast()!], at: 0)
    }
}

rotate(&arrToRotate, steps)
