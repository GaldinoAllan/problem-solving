import Foundation

func timeConversion(s: String) -> String {
  let period: String = String(s.suffix(2))
  let time: String = s.trimmingCharacters(in: .letters)
  let splitTimeArray = time.split(separator: ":")
  var timeArray: Array<Int> = []
  
  for i in splitTimeArray{
    timeArray.append(Int(i)!)
  }
    
  for i in timeArray {
    if (i >= 60 || i < 0){
      return "Not a valid time"
    }
  }
  
  if (timeArray[0] > 12 || timeArray[0] < 1){
    return "Not a valid time"
  }
  
  if period == "PM"{
    if timeArray[0] != 12 {
      timeArray[0] = timeArray[0] + 12
    }
    
    let hour = String(format:"%02d", timeArray[0])
    let minutes = String(format:"%02d", timeArray[1])
    let seconds = String(format:"%02d", timeArray[2])
    
    return "\(hour):\(minutes):\(seconds)"
    
  } else if period == "AM" {
    if timeArray[0] == 12 {
      timeArray[0] = 0
    }
    
    let hour = String(format:"%02d", timeArray[0])
    let minutes = String(format:"%02d", timeArray[1])
    let seconds = String(format:"%02d", timeArray[2])
    
    return "\(hour):\(minutes):\(seconds)"
    
  } else {
    return "Not a valid time"
  }
}

print(timeConversion(s: "12:00:00AM"))
