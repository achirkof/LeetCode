import Foundation

/*
 Input:  123
 Output: 321

 Input:  -123
 Output: -321

 Input:  120
 Output: 21

 Input:  0
 Output: 0
 */

var number = -123

func reverse(_ x: Int) -> Int {
    let mul = x < 0 ? -1 : 1
    var arr = Array(String(x * mul))
    let n = arr.count
    for i in 0...(n - 1) / 2 {
        let tmp = arr[i]
        arr[i] = arr[n - 1 - i]
        arr[n - 1 - i] = tmp
    }
    let res = (Int(String(arr)) ?? 0) * mul
    guard Int32.min <= res, res <= Int32.max else { return 0 }
    return res
}

reverse(number)
