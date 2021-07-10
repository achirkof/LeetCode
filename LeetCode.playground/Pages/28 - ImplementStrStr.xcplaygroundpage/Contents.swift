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
    if needle.isEmpty { return 0 }
    if needle.count > haystack.count { return -1 }
    
    var firstIndex = 0
    var rangeStartIndex = haystack.startIndex
    var rangeEndIndex = haystack.index(rangeStartIndex, offsetBy: needle.count - 1)

    while rangeEndIndex < haystack.endIndex {
        let substring = haystack[rangeStartIndex ... rangeEndIndex]
        if substring == needle {
            return firstIndex
        }
        rangeStartIndex = haystack.index(after: rangeStartIndex)
        rangeEndIndex = haystack.index(after: rangeEndIndex)
        firstIndex += 1
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
