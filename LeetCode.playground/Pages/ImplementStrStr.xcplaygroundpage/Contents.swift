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
    if haystack.isEmpty {
        if needle.isEmpty { return 0 }
        return -1
    }

    if needle.isEmpty { return 0 }

    let needleCount = needle.count
    var start = 0
    var end = needleCount - 1

    while end < haystack.count {
        let startIndex = haystack.index(haystack.startIndex, offsetBy: start)
        let endIndex = haystack.index(haystack.startIndex, offsetBy: end)
        let substring = haystack[startIndex ... endIndex]
        if substring == needle {
            return start
        }

        start += 1
        end += 1
    }

    return -1
}

strStr("hello", "ll")
strStr("aaaaa", "bba")
strStr("", "")
strStr("bcdee", "de")
strStr("bc", "dec")
strStr("", "a")
strStr("a", "a")
strStr("aaa", "a")
strStr("mississippi", "issipi")
