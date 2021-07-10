import Foundation

/*
 Input: s = "anagram", t = "nagaram"
 Output: true

 Input: s = "rat", t = "car"
 Output: false
 */

let s = "anagram", t = "nagaram"

func isAnagram(_ s: String, _ t: String) -> Bool {
    guard s.count == t.count else { return false }

    var tmp = t
    s.forEach { char in
        if let index = tmp.firstIndex(of: char) {
            tmp.remove(at: index)
        }
    }

    return tmp.isEmpty
}

isAnagram(s, t)
