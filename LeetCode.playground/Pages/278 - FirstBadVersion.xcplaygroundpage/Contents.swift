import Foundation

/*

 Given n = 5, and version = 4 is the first bad version.

 call isBadVersion(3) -> false
 call isBadVersion(5) -> true
 call isBadVersion(4) -> true

 Then 4 is the first bad version.

 */
let versions = [0, 0, 1, 1, 1, 1] // -> 2

// supplementary method to simulate API
func isBadVersion(_ versions: [Int], _ number: Int) -> Bool {
    return versions[number] == 1 ? true : false
}

func firstBadVersion(_ n: Int) -> Int {
    var leftIdx = 1
    var rightIdx = n
    var mid = 0

    while leftIdx < rightIdx {
        mid = leftIdx + (rightIdx - leftIdx) / 2
        if isBadVersion(versions, mid) {
            rightIdx = mid
        } else {
            leftIdx = mid + 1
        }
    }

    return leftIdx
}

firstBadVersion(6)
