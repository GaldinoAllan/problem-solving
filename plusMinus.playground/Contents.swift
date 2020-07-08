import Foundation

// Complete the plusMinus function below.
func plusMinus(arr: [Int]) -> Void {
  let countArray = arr.count
  var positives: Float = 0
  var negatives: Float = 0
  var zeros: Float = 0
  
  for i in arr{
    if i > 0{
        positives = positives + 1
    } else if i < 0 {
      negatives = negatives + 1
    } else {
      zeros = zeros + 1
    }
  }
  
  let pos: Float = (positives/Float(countArray))
  let neg: Float = (negatives/Float(countArray))
  let zer: Float = (zeros/Float(countArray))
  
  print(pos)
  print(neg)
  print(zer)
}

plusMinus(arr: [-4, 3, -9, 0, 4, 1])
