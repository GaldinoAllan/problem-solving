import Foundation

func simpleArraySum(ar: [Int]) -> Int {
    var sum = 0

    for i in ar{
    sum = sum + i
    }
  
    return sum
}


print(simpleArraySum(ar: [1,2,3]))
