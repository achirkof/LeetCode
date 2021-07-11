import Foundation

/*
 Count the number of prime numbers less than a non-negative number, n.

 Example 1:
 Input: n = 10
 Output: 4
 Explanation: There are 4 prime numbers less than 10, they are 2, 3, 5, 7.

 Example 2:
 Input: n = 0
 Output: 0

 Example 3:
 Input: n = 1
 Output: 0
 */

func countPrimes(_ n: Int) -> Int {
    var counter = 0
    if n <= 1 { return counter }

    for i in 2 ..< n {
        var j = 1
        var dividers = 0
        while j <= i {
            if i % j == 0 {
                dividers += 1
            }

            j += 1
        }

        if dividers == 2 {
            counter += 1
        }
    }

    return counter
}

countPrimes(10)
