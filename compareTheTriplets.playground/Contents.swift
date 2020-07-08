import Foundation

func compareTriplets(a: [Int], b: [Int]) -> [Int] {
  var alice: Int = 0
  var bob: Int = 0
  
  for i in 0...2 {
    if (a[i] > b[i]){
      alice = alice + 1
    }else if (b[i] > a[i]) {
      bob = bob + 1
    }
  }
  
  return [alice, bob]
}

print(compareTriplets(a: [5, 6, 7], b: [3, 6, 10]))

print(compareTriplets(a: [17, 28, 30], b: [99, 16, 8]))
