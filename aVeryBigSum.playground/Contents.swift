import Foundation

func aVeryBigSum(ar: [Int]) -> Int {
  var sum: Int = 0
    
  for i in ar{
    sum = sum + i
  }
  
  return sum
}

print(aVeryBigSum(ar: [1000000001, 1000000002, 1000000003, 1000000004, 1000000005]))
