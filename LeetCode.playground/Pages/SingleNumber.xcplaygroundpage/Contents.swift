import Foundation

// MARK: - Single Number

let arr3 = [1, 2, 1, 2, 4] // 4

func singleNumber(_ nums: [Int]) -> Int {
    var dict = [Int: Int]()

    for (_, val) in nums.enumerated() {
        if let prev = dict[val] {
            dict[val] = prev + 1
        } else {
            dict[val] = 1
        }
    }

    return dict.filter { $0.1 == 1 }.map { $0.0 }.first!
}

singleNumber(arr3)

func singleNumber2(_ nums: [Int]) -> Int {
    var uniqueNumbers = Set<Int>(minimumCapacity: nums.count)
    for n in nums {
        if uniqueNumbers.contains(n) {
            uniqueNumbers.remove(n)
        } else {
            uniqueNumbers.insert(n)
        }
    }

    return uniqueNumbers.first!
}

singleNumber2(arr3)
