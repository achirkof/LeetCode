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

    // Шаг - 1
    // Готовим массив по алгоритму Кнута-Морриса-Пратта
    var p = [0]
    var i = 1
    var j = 0

    while i < n {
        if needle[needle.index(needle.startIndex, offsetBy: j)] == needle[needle.index(needle.startIndex, offsetBy: i)] {
            p.append(j + 1)
            i += 1
            j += 1
        } else {
            if j == 0 {
                p.append(0)
                i += 1
            } else {
                j = p[j - 1]
            }
        }
    }

    // Шаг - 2
    // С помощью массива проверяем вхождение образа в стоку
    var k = 0
    var l = 0
    var index: Int?

    while l < n, k < m {
        if haystack[haystack.index(haystack.startIndex, offsetBy: k)] == needle[needle.index(needle.startIndex, offsetBy: l)] {
            if l == n - 1 {
                index = k - l
                break
            } else {
                k += 1
                l += 1
            }
        } else if l != 0 {
            l = p[l - 1]
        } else {
            if k == m - 1 {
                index = -1
                break
            } else {
                k += 1
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
strStr("mississippi", "issipi")
