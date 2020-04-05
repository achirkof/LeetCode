import Foundation

// MARK: - Merge Sorted Array

var nums1 = [1, 2, 3, 0, 0, 0]
let m = 3
let nums2 = [2, 4, 5, 6, 7]
let n = 5

func merge(_ nums1: inout [Int], _ m: Int, _ nums2: [Int], _ n: Int) {
    var leftArr = nums1.dropLast(nums1.count - m)
    var rightArr = nums2.dropLast(nums2.count - n)
    var sortedArr = [Int]()

    while !leftArr.isEmpty {
        if rightArr.isEmpty {
            break
        }

        let el = leftArr.first! < rightArr.first! ? leftArr.popFirst() : rightArr.popFirst()
        sortedArr.append(el!)
    }

    nums1 = sortedArr + leftArr + rightArr
}

merge(&nums1, m, nums2, n)
