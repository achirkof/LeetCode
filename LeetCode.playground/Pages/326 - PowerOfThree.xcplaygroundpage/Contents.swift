import Foundation

/*
 Given an integer n, return true if it is a power of three. Otherwise, return false.
 An integer n is a power of three, if there exists an integer x such that n == 3^x.

 Example 1:
 Input: n = 27
 Output: true

 Example 2:
 Input: n = 0
 Output: false

 Example 3:
 Input: n = 9
 Output: true

 Example 4:
 Input: n = 45
 Output: false
 */

func isPowerOfThree(_ n: Int) -> Bool {
    if n == 0 { return false }

    var i = n
    while i % 3 == 0 {
        i = i / 3
    }

    return i == 1
}

isPowerOfThree(81)
