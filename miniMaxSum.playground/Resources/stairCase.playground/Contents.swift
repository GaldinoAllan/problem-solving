import Foundation

func staircase(n: Int) -> Void {
  for i in 0..<n{
    for _ in (0..<((n - i)-1)).reversed(){
      print(" ", terminator:"")
    }
    for _ in 0...i{
      print("#", terminator:"")
    }
    print("")
  }
}

staircase(n: 10)
