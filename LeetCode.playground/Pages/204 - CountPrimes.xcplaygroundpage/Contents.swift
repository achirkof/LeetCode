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

/*
 Решето Эратосфена
 */

func countPrimes(_ n: Int) -> Int {
    var count = 0
    if n <= 1 { return count }

    var isPrime = Array(repeating: true, count: n)

    for i in 2 ..< n {
        if isPrime[i] {
            count += 1
            var j = i
            while j + i < n {
                isPrime[j + i] = false
                j += i
            }
        }
    }

    return count
}

countPrimes(10)
