//: Playground - noun: a place where people can play

import UIKit

var str = "Hello, playground"

public func solution(_ N : Int) -> Int {
  // write your code in Swift 3.0 (Linux)
  
  let binary = decimalToBinary(N).map{Int($0)}
  if (binary.count <= 1)
  {
    return 0
  }
  var maxZero = 0
  var currentCount = 0
  var startCount = false
  var stopCount = false
  for index in 0...binary.count - 2 {
    let current = binary[index]
    let next = binary[index + 1]
    print("current:\(current!) next:\(next!)")
    if current == 1 && next == 0 {
      print("startCount")
      startCount = true
    }
    
    if (startCount && binary[index] == 0)
    {
      currentCount += 1
      print("count: \(currentCount) ")
    }
    
    if current == 0 && next == 1{
      print("stopCount")
      stopCount = true
    }
    else {
      stopCount = false
    }
    
    if currentCount > maxZero && stopCount {
      
      maxZero = currentCount
      print("max count updated:\(maxZero)")
    }
    
    if stopCount
    {
      currentCount = 0
    }
  }
  print("Final consecutive zeroes: \(maxZero)")
  return maxZero
}

public func decimalToBinary(_ N : Int ) -> [String]
{
  let binary = String(N, radix: 2)
  let arrBinary = binary.map{String($0)}
  print(arrBinary)
  return arrBinary
}

solution(1)
solution(5)
