import Foundation

/*
 Input: s = "leetcode"
 Output: 0

 Input: s = "loveleetcode"
 Output: 2

 Input: s = "aabb"
 Output: -1
 */

let s = "loveleetcode"

func firstUniqChar(_ s: String) -> Int {
    let arr = Array(s)
    var map = [Character: Int]()
    var index = -1

    for i in 0..<arr.count {
        if map.contains(where: { $0.key == arr[i]}) {
            let count = map[arr[i]] ?? 0
            map[arr[i]] = count + 1
        } else {
            map[arr[i]] = 1
        }
    }

    for i in 0..<arr.count {
        if map[arr[i]] == 1 { index = i; break }
    }

    return index
}

firstUniqChar(s)
