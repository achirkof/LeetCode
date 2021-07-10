import Foundation

/*
Input: matrix = [[1,2,3],[4,5,6],[7,8,9]]
Output: [[7,4,1],[8,5,2],[9,6,3]]
*/

var m1 = [[1,2,3],[4,5,6],[7,8,9]]
var m2 = [[5,1,9,11],[2,4,8,10],[13,3,6,7],[15,14,12,16]]

func rotate(_ matrix: inout [[Int]]) {
    let n = matrix.count
    for i in 0..<(n + 1) / 2 { // 0
        for j in 0..<n / 2 { // 0 1
            let temp = matrix[n - 1 - j][i] // 7
            matrix[n - 1 - j][i] = matrix[n - 1 - i][n - j - 1]
            matrix[n - 1 - i][n - j - 1] = matrix[j][n - 1 - i]
            matrix[j][n - 1 - i] = matrix[i][j]
            matrix[i][j] = temp
        }
    }
}

rotate(&m2)
