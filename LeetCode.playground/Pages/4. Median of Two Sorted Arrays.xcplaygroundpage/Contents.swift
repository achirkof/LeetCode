import Foundation

/*
 ---- Hard
 
 Given two sorted arrays nums1 and nums2 of size m and n respectively, return the median of the two sorted arrays.
 The overall run time complexity should be O(log (m+n)).

 Example 1:
 Input: nums1 = [1,3], nums2 = [2]
 Output: 2.00000
 Explanation: merged array = [1,2,3] and median is 2.

 Example 2:
 Input: nums1 = [1,2], nums2 = [3,4]
 Output: 2.50000
 Explanation: merged array = [1,2,3,4] and median is (2 + 3) / 2 = 2.5.

 Example 3:
 Input: nums1 = [0,0], nums2 = [0,0]
 Output: 0.00000

 Example 4:
 Input: nums1 = [], nums2 = [1]
 Output: 1.00000

 Example 5:
 Input: nums1 = [2], nums2 = []
 Output: 2.00000
 */

func findMedianSortedArrays(_ nums1: [Int], _ nums2: [Int]) -> Double {
    var left = nums1
    var right = nums2
    var merged = [Int]()

    while !left.isEmpty {
        if right.isEmpty {
            break
        }

        let el = left.first! < right.first! ? left.removeFirst() : right.removeFirst()
        merged.append(el)
    }

    merged = merged + left + right

    if merged.count % 2 == 0 {
        let ind = merged.count / 2
        return (Double(merged[ind]) + Double(merged[ind - 1])) / 2
    } else {
        return Double(merged[merged.count / 2])
    }
}

findMedianSortedArrays([1,2,5], [3,4,6])
