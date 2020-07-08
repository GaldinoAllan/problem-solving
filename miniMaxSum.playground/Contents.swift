import Foundation

func miniMaxSum(arr: [Int]) -> Void {
  var max: Int = 0
  var min: Int = 999999999999999999
  
  for i in arr {
    var sum: Int = 0
    
    for j in arr{
      if j == i{
        continue
      }
      sum = sum + j
    }
    
    if sum == 0{
      sum = arr[0]*4
    }
    
    if sum > max{
      max = sum
    }
    if sum < min{
      min = sum
    }
  }
  
  print(min, max)
}

miniMaxSum(arr: [5, 5, 5, 5, 5])
