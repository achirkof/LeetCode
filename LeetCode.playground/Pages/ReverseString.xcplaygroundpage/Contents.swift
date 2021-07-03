import Foundation

/*
 Input:  ["h","e","l","l","o"]
 Output: ["o","l","l","e","h"]
 */

var s: [Character] = ["h","e","l","l","o"]

func reverseString(_ s: inout [Character]) {
    let n = s.count
    for i in 0...(n - 1) / 2 {
        let tmp = s[i]
        s[i] = s[n - 1 - i]
        s[n - 1 - i] = tmp
    }
}

reverseString(&s)
