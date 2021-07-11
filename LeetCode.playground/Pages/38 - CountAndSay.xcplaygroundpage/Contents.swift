import Foundation

/*
 The count-and-say sequence is a sequence of digit strings defined by the recursive formula:

 countAndSay(1) = "1"
 countAndSay(n) is the way you would "say" the digit string from countAndSay(n-1), which is then converted into a different digit string.
 To determine how you "say" a digit string, split it into the minimal number of groups so that each group is a contiguous section all of the same character. Then for each group, say the number of characters, then say the character. To convert the saying into a digit string, replace the counts with a number and concatenate every saying.

 Input: n = 1
 Output: "1"
 Explanation: This is the base case.

 Input: n = 4
 Output: "1211"
 Explanation:
 countAndSay(1) = "1"
 countAndSay(2) = say "1" = one 1 = "11"
 countAndSay(3) = say "11" = two 1's = "21"
 countAndSay(4) = say "21" = one 2 + one 1 = "12" + "11" = "1211"
 countAndSay(5) = say "1211" = one 1 + one 2 + two 1 = "11" + "12" + "21" = "111221"
 */

func countAndSay(_ n: Int) -> String {
    if n <= 0 { return "" }

    var res = "1"
    var i = 1
    while i < n {
        var counter = 1
        var tmp = ""

        for j in 1 ... res.count {
            if j == res.count || res[res.index(res.startIndex, offsetBy: j)] != res[res.index(res.startIndex, offsetBy: j - 1)] {
                tmp += "\(counter)\(res[res.index(res.startIndex, offsetBy: j - 1)])"
                counter = 1
            } else {
                counter += 1
            }
        }

        res = tmp
        i += 1
    }

    return res
}

countAndSay(5)
