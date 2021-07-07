import Foundation

/*
 The algorithm for myAtoi(string s) is as follows:

 1. Read in and ignore any leading whitespace.
 2. Check if the next character (if not already at the end of the string) is '-' or '+'. Read this character in if it is either. This determines if the final result is negative or positive respectively. Assume the result is positive if neither is present.
 3. Read in next the characters until the next non-digit character or the end of the input is reached. The rest of the string is ignored.
 4. Convert these digits into an integer (i.e. "123" -> 123, "0032" -> 32). If no digits were read, then the integer is 0. Change the sign as necessary (from step 2).
 5. If the integer is out of the 32-bit signed integer range [-231, 231 - 1], then clamp the integer so that it remains in the range. Specifically, integers less than -231 should be clamped to -231, and integers greater than 231 - 1 should be clamped to 231 - 1.
 6. Return the integer as the final result.

 Input: s = "42"
 Output: 42

 Input: s = "   -42"
 Output: -42

 Input: s = "4193 with words"
 Output: 4193

 Input: s = "words and 987"
 Output: 0

 Input: s = "-91283472332"
 Output: -2147483648
 */

func myAtoi(_ s: String) -> Int {
    var result: Int = 0
    var sign: Int = 1
    var startPosition = 0

    if s.isEmpty { return result }

    for i in 0 ..< s.count {
        if s[s.index(s.startIndex, offsetBy: i)] != " " {
            startPosition = i
            break
        }
    }

    let signChar = s[s.index(s.startIndex, offsetBy: startPosition)]
    if signChar == "-" || signChar == "+" {
        sign = signChar == "-" ? -1 : 1
        startPosition += 1
    }

    for i in startPosition ..< s.count {
        if let num = Int(String(s[s.index(s.startIndex, offsetBy: i)])) {
            result = result * 10 + num

            if result * sign > Int32.max || result * sign < Int32.min {
                return sign == 1 ? Int(Int32.max) : Int(Int32.min)
            }
        } else {
            return result * sign
        }
    }

    return result * sign
}

myAtoi("42") // 42
myAtoi("-91283472332") // -2147483648
myAtoi("21474836460") // 2147483647
myAtoi("        +11245577259q") // 2147483647
myAtoi("2000000000000000") // 2147483647
