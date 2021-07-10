import Foundation

// MARK: - Best Time to Buy and Sell Stock II
let sales = [7, 1, 5, 3, 6, 4] // =7
let sales2 = [1, 2, 3, 4, 5] // =4
let sales3 = [7, 6, 4, 3, 1] // =0

func maxProfit(_ prices: [Int]) -> Int {
    var profit = [Int]()

    if prices.isEmpty {
        return 0
    }

    for idx in 1 ..< prices.count {
        if prices[idx] > prices[idx - 1] {
            profit.append(prices[idx] - prices[idx - 1])
        }
    }
    return profit.reduce(0, +)
}

maxProfit(sales3)
