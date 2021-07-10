import Foundation

/*
 Input: s = "A man, a plan, a canal: Panama"
 Output: true
 Explanation: "amanaplanacanalpanama" is a palindrome.

 Input: s = "race a car"
 Output: false
 Explanation: "raceacar" is not a palindrome.
 */

let s = "A man, a plan, a canal: Panama"

func isPalindrome(_ s: String) -> Bool {
    let filtered = s.filter { $0.isLetter || $0.isNumber }.lowercased()
    guard !filtered.isEmpty || filtered.count != 1 else { return true }

    let offset = filtered.count % 2
    var middle = filtered.count / 2
    var left = filtered[..<filtered.index(filtered.startIndex, offsetBy: middle)]
    var right = filtered[filtered.index(filtered.startIndex, offsetBy: middle + offset)..<filtered.endIndex]
    while middle > 0 {
        if left.popLast() != right.popFirst() { return false }
        middle -= 1
    }

    return true
}

isPalindrome(s)
