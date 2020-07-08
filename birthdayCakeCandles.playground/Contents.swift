import Foundation

func birthdayCakeCandles(ar: [Int]) -> Int {
  var count: Int = 0
  var maxHeight: Int = 0
  
  for i in ar {
    if i >= maxHeight{
      maxHeight = i
    }
  }
  
  for i in ar {
    if i == maxHeight{
      count = count + 1
    }
  }
        
  return count
}

print(birthdayCakeCandles(ar: [2, 2, 1, 3]))
