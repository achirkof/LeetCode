import Foundation

/*
 Input: haystack = "hello", needle = "ll"
 Output: 2

 Input: haystack = "aaaaa", needle = "bba"
 Output: -1

 Input: haystack = "", needle = ""
 Output: 0
 */

func strStr(_ haystack: String, _ needle: String) -> Int {
    let m = haystack.count
    let n = needle.count

    if needle.isEmpty { return 0 }
    if m < n { return -1 }

    var index: Int?

    for i in 0 ... m - n {
        for j in 0 ..< n {
            let haystackChar = haystack[haystack.index(haystack.startIndex, offsetBy: i + j)]
            let needleChar = needle[needle.index(needle.startIndex, offsetBy: j)]
            if haystackChar != needleChar {
                break
            }

            if j == n - 1 && index == nil {
                index = i
            }
        }
    }

    return index ?? -1
}

strStr("hello", "ll")
strStr("aaaaa", "bba")
strStr("", "")
strStr("bcdee", "de")
strStr("bc", "dec")
strStr("", "a")
strStr("a", "a")
strStr("aaa", "a")
