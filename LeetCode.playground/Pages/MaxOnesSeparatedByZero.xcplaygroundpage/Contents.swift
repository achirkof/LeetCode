
import Foundation

/*
 Task: return maximum number of ones separated by one zero in array

 [1, 0] -> 1
 [1, 0 , 1] -> 2
 [1, 1, 0, 1, 1, 1] -> 5
 [1, 1, 0, 0, 1] -> 2
 [1, 1, 0, 0, 1, 1, 1, 0, 1, 1, 0, 1, 1] -> 5

 */

let array = [0, 1, 1, 0, 0, 1, 1, 1, 1, 0, 1, 1, 1, 0, 1, 1, 1, 1, 1] // -> 8
let array1 = [Int]()
let array2 = [0]
let array3 = [1]
let array4 = [0, 0]
let array5 = [1, 1]
let array6 = [1, 0]
let array7 = [1, 0, 1]
let array8 = [1, 1, 0, 0, 1]

func maxOnes(array: [Int]) -> Int {
    if array.isEmpty {
        return 0
    }

    if !array.contains(0) {
        return array.count
    }

    var leftCount = 0
    var rightCount = 0
    var onesRows = [Int]()

    for (i, v) in array.enumerated() {
        if v == 0 {
            // count left from zero
            var idxLeft = i - 1
            while idxLeft >= 0, array[idxLeft] == 1 {
                leftCount += 1
                idxLeft -= 1
            }

            // count right from zero
            var idxRight = i + 1
            while idxRight < array.count, array[idxRight] == 1 {
                rightCount += 1
                idxRight += 1
            }

            // summ left and right count
            onesRows.append(leftCount + rightCount)
            leftCount = 0
            rightCount = 0
        }
    }

    return onesRows.max() ?? 0
}

maxOnes(array: array1)
