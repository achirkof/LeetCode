import Foundation

// MARK: - Plus One

let nine = [9, 9]
let zero = [0]
let oneZero = [1, 0]
let small = [7, 2, 8, 5, 9, 9, 9, 9, 9]
let short = [6, 9, 0]
let big = [7, 2, 8, 5, 0, 9, 1, 2, 9, 5, 3, 6, 6, 7, 3, 2, 8, 4, 3, 7, 9, 5, 7, 7, 4, 7, 4, 9, 4, 7, 0, 1, 1, 1, 7, 4, 0, 0, 6]

func plusOne(_ digits: [Int]) -> [Int] {
    var newArr = digits
    var idx = newArr.count - 1

    while idx >= 0 {
        if newArr[idx] != 9 {
            newArr[idx] = newArr[idx] + 1
            idx -= 1
            break
        } else {
            if idx == 0 {
                newArr[idx] = 0
                newArr.insert(1, at: 0)
                break
            } else {
                newArr[idx] = 0
                idx -= 1
                continue
            }
        }
    }

    return newArr
}

plusOne([1, 2, 3])
