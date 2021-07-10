import Foundation

/*
 Write a function to find the longest common prefix string amongst an array of strings.
 If there is no common prefix, return an empty string "".

 Input: strs = ["flower","flow","flight"]
 Output: "fl"

 Input: strs = ["dog","racecar","car"]
 Output: ""
 Explanation: There is no common prefix among the input strings.
 */

func longestCommonPrefix(_ strs: [String]) -> String {
    guard
        var prefix = strs.first, !prefix.isEmpty
    else { return "" }

    for i in 1 ..< strs.count {
        let word = strs[i]
        while !word.hasPrefix(prefix) {
            if prefix.isEmpty {
                return ""
            }
            prefix.removeLast()
        }
    }

    return prefix
}

longestCommonPrefix(["flower","flow","flight"])
longestCommonPrefix(["dog","racecar","car"])
longestCommonPrefix(["",""])
longestCommonPrefix(["ab","a"])
