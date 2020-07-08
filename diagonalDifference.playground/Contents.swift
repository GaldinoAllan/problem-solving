import Foundation

func diagonalDifference(arr: [[Int]]) -> Int {
  let n = arr.count
  
  var count1: Int = 0
  var count2: Int = 0
  
  for i in 0..<n {
    count1 = count1 + arr[i][i]
    count2 = count2 + arr[i][n - i - 1]
  }
  let difference = count1 - count2
  
  return abs(difference)
}

print(diagonalDifference(arr: [[11,2,4],[4,5,6],[10,8,-12]]))
