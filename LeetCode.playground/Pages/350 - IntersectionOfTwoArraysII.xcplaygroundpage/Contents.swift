import Foundation

// MARK: - Intersection of Two Arrays II

let nums1 = [1, 2, 2, 1, 1, 3, 3]
let nums2 = [2, 3, 1, 4, 2, 3, 5, 2, 1, 4]

func intersect(_ nums1: [Int], _ nums2: [Int]) -> [Int] {
    var result = [Int]()
    var dict = [Int: Int]()

    nums1.forEach {
        if let counter = dict[$0] {
            dict[$0] = counter + 1
        } else {
            dict[$0] = 1
        }
    }

    nums2.forEach {
        if let counter = dict[$0], counter > 0 {
            result.append($0)
            dict[$0] = counter - 1
        }
    }

    return result
}

intersect(nums1, nums2)
